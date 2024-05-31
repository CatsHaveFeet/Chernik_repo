{

	xspd = 0;
	yspd = 0;
	
	def_move_spd = 1;
	move_spd = def_move_spd;
	sprint_spd = def_move_spd * 1.5;
	sprinting = false;
	
	//changes sprites depending on direction
	//TODO: make more sprites after sample is finished
	sprite[RIGHT] = spr_sample_stickman_moving;
	sprite[UP] = spr_sample_stickman_moving;
	sprite[LEFT] = spr_sample_stickman_moving;
	sprite[DOWN] = spr_sample_stickman_moving;
	sprite[STOP] = spr_sample_stickman_stationary;
	
	face = STOP;

}