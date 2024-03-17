{
	//disable alpha blending (we just want RGB from screen)
	gpu_set_blendenable(false);
	
	if (pause) { //draw frozen image to screen while paused
		surface_set_target(application_surface);
		if (surface_exists(pauseSurf)) draw_surface(pauseSurf, 0, 0);
		else { //restore from buffer if we lost the surface
			pauseSurf = surface_create(resW, resH);
			buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
		}
		surface_reset_target();
	}
	
	if (keyboard_check_pressed(vk_escape)) { //toggle pause
		if (!pause){ //pause now
			pause = true;
			
			//deactivate all other instances
			instance_deactivate_all(true);
			if (!instance_exists(obj_pause_menu)) {
				instance_create_layer(0, 0, "Instances", obj_pause_menu);
				instance_activate_object(obj_pause_menu);
			}
			
			//capture this game moment (without GUI)
			pauseSurf = surface_create(resW, resH);
			surface_set_target(pauseSurf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
			
			//back up this surface to a buffer in case we lose it (screen focus, etc)
			if (buffer_exists(pauseSurfBuffer)) {
				buffer_delete(pauseSurfBuffer);
			}
			pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
			buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
		}
		else { //unpause now
			pause = false;
			keyboard_clear(vk_escape);
			instance_activate_all();
			if (instance_exists(obj_pause_menu)) {
				instance_destroy(obj_pause_menu);
			}
			if (surface_exists(pauseSurf)) surface_free(pauseSurf);
			if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		}
	}
	
	//reenable alpha blending
	gpu_set_blendenable(true);
}