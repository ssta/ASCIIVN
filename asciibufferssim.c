/* This file is part of ASCIIVN.
 *
 * Copyright (C) 2017  Adrian Parvin D. Ouano
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#include "imagemanip.h"

#include "asciibufferssim.h"
#include "asciibufferfill.h"

#include <math.h>

#define pow2(x) ((x)*(x))
#define signpow2(x) ((x)*fabsf(x))
#define pow3(x) ((x)*(x)*(x))
#define length(array) sizeof(array)/sizeof(*array)

int
render_ssim(struct asciibuffer *dest,
						const struct imagebuffer *src,
            char fontname[])
{
	struct charset *font_charset = NULL;

	bool defaultfont = false;

	if (!strcmp(fontname, ""))
		{
			fprintf(stderr, "Warning: no fontname provided. Using fallback.\n");

			font_charset = charset_read_from_directory("./fonts/FixedsysExcelsior");
			defaultfont = true;
		}
	else
		{
			// TODO: custom fontset loading
			fprintf(stderr, "Custom fontset loading is not yet implemented\n");
			exit(EXIT_FAILURE);
		}



	int result = render_ssim_charset_unsafe(dest, src, font_charset);

	if (defaultfont)
		{
			free_charset(font_charset);
		}

	return result;
}

int
render_ssim_charset_unsafe(struct asciibuffer *dest,
													 const struct imagebuffer *src,
													 const struct charset *font_charset)
{
	assert(src->width % font_charset->width == 0 &&
				 src->height % font_charset->height == 0);

	clear(dest);
	
	for (size_t y_ = 0, y = 0; y < src->height; ++y_, y += font_charset->height)
		{
			for (size_t x_ = 0, x = 0; x < src->width;
					 ++x_, x += font_charset->width)
				{
					char best_ssim_char = 0;
					float best_ssim_value = 0;

					struct imagebuffer glyph_imagebuffer = {
						.height = font_charset->height,
						.width = font_charset->width,
						.color_type = PNG_COLOR_TYPE_GRAY,
						.pixel_size = color_type_to_bytes(PNG_COLOR_TYPE_GRAY),
						.buffer = NULL
					};

					for (size_t i = 0; i < font_charset->n; ++i)
						{
							glyph_imagebuffer.buffer = font_charset->characters[i].glyph;

							float current_ssim_value =
								ssim_imagebuffer(x, y, src, &glyph_imagebuffer);

							if (current_ssim_value > best_ssim_value)
								{
									best_ssim_value = current_ssim_value;
									best_ssim_char = font_charset->characters[i].character;
								}

						}

					*index((struct imagebuffer *) dest, x_, y_) = best_ssim_char;
					if (dest->color_type == PNG_COLOR_TYPE_GRAY_ALPHA)
						{
							float alpha = 0xff;
							if (src->color_type == PNG_COLOR_TYPE_GRAY_ALPHA)
								{
									for (size_t j = 0; j < font_charset->height; ++j)
										{
											for (size_t i = 0; i < font_charset->width; ++i)
												{
													float dy = *index_alpha(src, x + i, y + j) - alpha;
													alpha += dy / (j * font_charset->width + i + 1);
												}
										}
								}

							alpha = alpha > 0 ? 0xff : 0;
							*index_alpha((struct imagebuffer *) dest, x_, y_) = (unsigned char) alpha;
						}
				}
		}

	return 0; 
}

float
ssim_imagebuffer(size_t column_offset,
								 size_t row_offset,
								 const struct imagebuffer *x,
                 const struct imagebuffer *y)
{
	assert(y->width + column_offset <= x->width);
	assert(y->height + row_offset <= x->height);

	size_t n = y->height * y->width;
	assert(n > 0); 

	float mean_x = 0;
	float mean_y = 0;

  float xarray[((n + 7)/8)*8] __attribute__ ((aligned (32)));
  float yarray[((n + 7)/8)*8] __attribute__ ((aligned (32)));

  float partialsumx [8] __attribute__ ((aligned (32))) = {0};
  float partialsumy [8] __attribute__ ((aligned (32))) = {0};
  float partialsumxy[8] __attribute__ ((aligned (32))) = {0};

  size_t k = 0;
  for (size_t j = 0; j < y->height; ++j)
		{
			for (size_t i = 0; i < y->width; ++i, ++k)
				{
					size_t xi = i + column_offset;
					size_t xj = j + row_offset;
					
					xarray[k] = *index(x, xi, xj);
					yarray[k] = *index(y,  i,  j);
				}
		}

  assert(k <= length(xarray));
  size_t pad = length(xarray) - k;
  for (;k < length(xarray); ++k)
	  {
		  xarray[k] = 0;
		  yarray[k] = 0;
	  }
  
  size_t i, i_ = 0;
  for (i = 0;
       i < length(xarray);
       i += 8)
	  {
		  for (i_ = 0; i_ < length(partialsumx); ++i_)
			  {
				  partialsumx[i_] += xarray[i + i_];
				  partialsumy[i_] += yarray[i + i_];
			  }
	  }
  for (i_ = 0; i_ < length(partialsumx); ++i_)
	  {
		  mean_x += partialsumx[i_];
	  }
  for (i_ = 0; i_ < length(partialsumx); ++i_)
	  {
		  mean_y += partialsumy[i_];
	  }
	mean_x /= n;
	mean_y /= n;

	// Calculate variances and covariance
	float var_x = 0;
	float	var_y = 0;
  float covar_xy = 0;
  for (i = 0;
       i < length(partialsumx);
       ++i)
	  {
		  partialsumx[i] = 0;
		  partialsumy[i] = 0;
	  }
  for (i = 0;
       i < length(xarray);
       i += 8)
	  {
		  for (i_ = 0; i_ < length(partialsumx); ++i_)
			  {
				  float xdiff = xarray[i + i_] - mean_x;
				  float ydiff = yarray[i + i_] - mean_y;
					
				  partialsumx [i_] += xdiff*xdiff;
				  partialsumy [i_] += ydiff*ydiff;
				  partialsumxy[i_] += xdiff*ydiff;
			  }
	  }
  for (i_ = 0; i_ < length(partialsumx); ++i_)
	  {
		  var_x    += partialsumx [i_];
		  var_y    += partialsumy [i_];
		  covar_xy += partialsumxy[i_];
	  }
  var_x    += pad*mean_x*mean_x;
  var_y    += pad*mean_y*mean_y;
  covar_xy += pad*mean_x*mean_y;
  
	var_x /= n;
	var_y /= n;
	covar_xy /= n;

	float L = 255,
		k_1 = 0.01,
		k_2 = 0.03,
		c_1 = pow2(k_1 * L),
		c_2 = pow2(k_2 * L),
		c_3 = c_2 / 2;

	// Direct translation of SSIM formula
	// https://en.wikipedia.org/wiki/Structural_similarity#Algorithm

	float luminance =
		(2 * mean_x * mean_y + c_1) / (pow2(mean_x) + pow2(mean_y) + c_1),
		contrast = (2 * sqrt(var_x) * sqrt(var_y) + c_2) / (var_x + var_y + c_2),
		structure = (covar_xy + c_3) / (sqrt(var_x) * sqrt(var_y) + c_3);

	return luminance * contrast * structure;
}
