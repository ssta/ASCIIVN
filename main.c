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
#include<assert.h>
#include<stdlib.h>
#include"asciibufferfill.h"
#include"asciibufferssim.h"
#include"charset.h"
#include"xbmutils.h"
#include"imagemanip.h"
#include"testimage.h"
#include "keyevent.h"

int
main()
{
	int caretwidth = 128;
	int caretheight = 64;

	struct asciibuffer *asciibuffer = new_asciibuffer(caretwidth, caretheight);
	struct asciibuffer *asciibuffer2 = new_asciibuffer(caretwidth, caretheight);

	struct charset *charset =
		charset_read_from_directory("./fonts/Monaco-10");
	
	struct imagebuffer *dog = new_imagebuffer_from_png("dog.png");
	assert(dog->pixel_size == 2);
	struct imagebuffer *dog_bg = new_imagebuffer_from_png("dog-background.png");
	assert(dog_bg->pixel_size == 2);
	compose(dog_bg, dog, 0, 0);
	struct imagebuffer *dog_bg_scaled =
		new_imagebuffer(caretwidth * charset->width, caretheight * charset->height);
	struct imagebuffer *dog_scaled =
		new_imagebuffer(caretwidth * charset->width, caretheight * charset->height);
	
	scale_bilinear(dog_bg_scaled, dog_bg);
	scale_bilinear(dog_scaled, dog);

	size_t i = 0;
	struct keyevent keyevent;
	keyevent_start();
	for (;;)
		{
			keyevent = keyevent_getenvent();
			switch (keyevent.tag)
				{
				case UP:
					render_fill(asciibuffer, dog2, "");
					flatten(asciibuffer);
					show_asciibuffer(asciibuffer);
					break;
				case DOWN:
					render_ssim_charset_unsafe(asciibuffer2, dog2, charset);
					flatten(asciibuffer2);
					show_asciibuffer(asciibuffer2);
					break;
				case CHAR:
					if (keyevent.character == 'q') goto end;
					break;
				}
		}
 end:
	keyevent_end();

	free(asciibuffer);
	free(asciibuffer2);

	free_charset(charset);
	free(dog2);
	free(dog_bg);
	free(dog);

	return 0;
}
