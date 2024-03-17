{

	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);
	sprint_key = keyboard_check(vk_shift);
	
	//changes move_spd if shift is pressed or not
	if (sprint_key) {
		move_spd = sprint_spd;
	}
	else {
		move_spd = def_move_spd;
	}
	
	//set xspd and yspd
	xspd = (right_key - left_key) * move_spd;
	yspd = (down_key - up_key) * move_spd; //because gamemaker is stupid and takes y reversed
	
	//set sprite
	mask_index = sprite[STOP];
	if (xspd == 0 && yspd == 0) {
		face = STOP;
	}
	else {
		if (yspd == 0) {
			if (xspd > 0) {
				face = RIGHT;
			}
			if (xspd < 0) {
				face = LEFT;
			}
		}
		if (xspd > 0 && face == LEFT) {
			face = RIGHT;
		}
		if (xspd < 0 && face == RIGHT) {
			face = LEFT;
		}
		if (xspd == 0) {
			if (yspd > 0) {
				face = DOWN;
			}
			if (yspd < 0) {
				face = UP;
			}
		}
		if (yspd > 0 && face == UP) {
			face = DOWN;
		}
		if (yspd < 0 && face == DOWN) {
			face = UP;
		}
	}
	sprite_index = sprite[face];
	
	//collisions
	if (place_meeting(x + xspd, y, obj_wall)) {
		xspd = 0;
	}
	if (place_meeting(x, y + yspd, obj_wall)) {
		yspd = 0;
	}
	
	//moves the player
	x += xspd;
	y += yspd;
	
	//centers camera on player
	//camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0]) / 2, y - camera_get_view_height(view_camera[0]) / 2);
	
	//depth
	depth = -bbox_bottom;

}