{
	draw_set_font(global.font_main);
	
	if (keyboard_check_pressed(ord("I"))) {menu_open = !menu_open}
	
	if (menu_open) {	
		for (var i = 0; i < array_length(inv); i++) {
			var _xx = screen_border + camera_get_view_x(view_camera[0]);
			var _yy = screen_border + camera_get_view_y(view_camera[0]) + (i > 0 ? add_previous_sprite_heights(i) : 0);
			var _sep = sep;
		
			draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep * i);
			draw_text_transformed_color(_xx + 16, _yy + (sprite_get_height(inv[i].sprite) / 2) - (string_height("M") / 2) + _sep * i, inv[i].name, 0.5, 0.5, 0, _c, _c, _c, _c, 1);
		}
	}
}
