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

#include<stdio.h>
#include<stdlib.h>
#include"asciibufferfill.h"
#include"asciibufferssim.h"
#include"charset.h"
#include"xbmutils.h"
#include"imagemanip.h"
#include"testimage.h"

#include "fonts/FixedsysExcelsior/slash.xbm"

int
main()
{
	int caretwidth = 128;
	int caretheight = 64;

	struct asciibuffer *asciibuffer = new_asciibuffer(caretwidth, caretheight);
	struct asciibuffer *asciibuffer2 = new_asciibuffer(caretwidth, caretheight);

	// render_fill(asciibuffer, smiley_flat, 8, 8);
	struct imagebuffer backslash = {
		.height = slash_height,
		.width = slash_width,
		.buffer = test_backslash()
	};

	struct imagebuffer slash = {
		.height = slash_height,
		.width = slash_width,
		.buffer = test_slash()
	};

	struct imagebuffer pipe = {
		.height = slash_height,
		.width = slash_width,
		.buffer = test_pipe()
	};

	struct imagebuffer hs = {
		.height = 8,
		.width = 8,
		.buffer = smiley_flat
	};

	struct imagebuffer *caret = side_by_side(&slash, &backslash);
	struct imagebuffer *caret_flip = side_by_side(&backslash, &slash);
	struct imagebuffer *diamond = top_bottom(caret, caret_flip);

	struct imagebuffer *dog = new_imagebuffer_from_png("dog.png");
	struct imagebuffer *dog2 =
		new_imagebuffer(caretwidth * slash_width, caretheight * slash_height);

	struct charset *charset =
		charset_read_from_directory("./fonts/FixedsysExcelsior");
	scale_bilinear(dog2, dog);

	render_fill(asciibuffer, dog, "");
	render_ssim_charset_unsafe(asciibuffer2, dog2, charset);

	flatten(asciibuffer);
	flatten(asciibuffer2);

	show_asciibuffer(asciibuffer);
	show_asciibuffer(asciibuffer2);

	free(asciibuffer);
	free(asciibuffer2);

	free(backslash.buffer);
	free(slash.buffer);
	free(pipe.buffer);

	free_charset(charset);
	free(dog2);
	free(dog);

	free(diamond);
	free(caret_flip);
	free(caret);

	return 0;
}
