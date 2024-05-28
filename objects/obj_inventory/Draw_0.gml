{
	draw_set_font(global.font_main);
	
	for (var i = 0; i < array_length(inv); i++) {
		var _xx = screen_border;
		var _yy = screen_border;
		var _sep = sep;
		
		draw_text_color(_xx + 16, _yy + _sep * i, inv[i].name, _c, _c, _c, _c, 1);
	}
}
