{
	depth = -9999;
	
	//textbox params
	textbox_width = 200;
	textbox_height = 64;
	border = 8;
	line_sep = 12;
	line_width = textbox_width - border * 2;
	textb_spr = spr_bg_menu;
	textb_img = 0;
	textb_img_spd = 0;
	
	//the text
	page = 0;
	page_number = 0;
	text[0] = "Hello!";
	text[1] = "Heeeeeeelllooooooooooooooooooooooo...";
	text[2] = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH";
	text[3] = "*leaves*";
	text_length[0] = string_length(text[0]);
	draw_char = 0;
	text_spd = 1;
	
	setup = false;
}