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
	text[1] = "Heeeeeeelllooooooooooooooooooooooo...";
	text[2] = "AAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHH";
	text[3] = "Lorem ipsum dolor sit amet.";
	text[4] = "*leaves*";
	text_length[0] = string_length(text[0]);
	draw_char = 0;
	text_spd = 1;
	
	setup = false;
}