{	
	//store nr of options in current menu
	op_length = array_length(option[menu_level]);
	
	//move through the menu
	pos += DOWN_INPUT - UP_INPUT;
	if (pos >= op_length) {
		pos = 0;
	}
	if (pos < 0) {
		pos = op_length - 1;
	}
	
	//using the options
	if (ACCEPT_INPUT) {
		
		var _sml = menu_level;
		
		switch (menu_level) {
			//start menu
			case 0:
				switch (pos) {
					//start game
					case 0:
						if (audio_is_playing(obj_sound_manager.song_instance)) {
							audio_pause_sound(obj_sound_manager.song_instance);
						}
						room_goto_next();
						break;
			
					//settings
					case 1:
						menu_level = 1;
						break;
			
					//quit game
					case 2:
						game_end();
						break;
				}
				break;
			//settings menu
			case 1:
				switch (pos) {
					//brightness
					case 0:
						
						break;
					//controls
					case 1:
						
						break;
					//volume
					case 2:
						
						break;
					//back
					case 3:
						menu_level = 0;
						break;
				}
				break;
		}
		
		//set position back
		if (_sml != menu_level) {
			pos = 0;
		}
		
		//current option length
		op_length = array_length(option[menu_level]);
	}
	
}