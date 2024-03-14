{
	//disable alpha blending (we just want RGB from screen)
	gpu_set_blendenable(false);
	
	if (pause) {
	
	}
	
	if (keyboard_check_pressed(vk_escape) { //toggle pause
		if (!pause){ //pause now
			pause = true;
			
			//deactivate all other instances
			instance_deactivate_all(true);
			
			
		}
	}

}