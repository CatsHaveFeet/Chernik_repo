{
	depth = -9999;
	
	//textbox params
	textbox_border = 30;
	textbox_width = window_get_width() - textbox_border * 2;
	textbox_height = window_get_height() / 3.5 - textbox_border / 2;
	border = 8;
	line_sep = string_height("M") * 1.2;
	line_width = textbox_width - border * 2;
	textb_spr = spr_bg_menu;
	textb_img = 0;
	textb_img_spd = 0;
	
	//the text
	page = 0;
	page_number = 0;
	text[0] = "Hello!";
	text[1] = "Welcome to the Chernik playtest!";
	text[2] = "There isn't much here at the moment...";
	text[3] = "But hopefully you like what you see!";
	text[4] = "Bye!";
	text_length[0] = string_length(text[0]);
	draw_char = 0;
	text_spd = 1;
	
	setup = false;
}