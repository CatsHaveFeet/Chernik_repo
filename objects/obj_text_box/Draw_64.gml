{	
	textbox_x = textbox_border;
	textbox_y = window_get_height() / 1.5 - sprite_get_height(textb_spr);
	
	//setup
	if (!setup) {
		setup = true;
		draw_set_font(global.font_main);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		global.dialogue_state = true;
		
		//loop through pages
		page_number = array_length(text);
		for (var p = 0; p < page_number; p++) {
			//find how many chars are on each page and store that value in "text_length" array
			text_length[p] = string_length(text[p]);
			//get x position for the textbox
				//for no character speaking
				text_x_offset[p] = 44;
		}
	}
	
	//typing the text
	if (draw_char < text_length[page]) {
		draw_char += text_spd;
		draw_char = clamp(draw_char, 0, text_length[page]);
	}
	
	//flip through pages
	if (ACCEPT_INPUT) {
		//if typing is done
		if (draw_char == text_length[page]) {
			//next page
			if (page < page_number - 1) {
				page++;
				draw_char = 0;
			}
			//destroy textbox
			else {
				instance_destroy();
				global.dialogue_state = false;
			}
		}
		//if not done typing
		else {
			draw_char = text_length[page];
		}
	}
	
	//draw textbox
	textb_img += textb_img_spd; //for an animated textbox
	textb_spr_w = sprite_get_width(textb_spr);
	textb_spr_h = sprite_get_height(textb_spr);
	//textbox background
	draw_sprite_ext(textb_spr, textb_img, textbox_x, textbox_y, textbox_width / textb_spr_w, textbox_height / textb_spr_h, 0, c_white, 1);
	
	//draw the text
	var _draw_text = string_copy(text[page], 1, draw_char);
	draw_text_ext(textbox_x + border, textbox_y + border, (string_starts_with(_draw_text, "*") ? "" : "* ") +  _draw_text, line_sep, line_width);
	
}