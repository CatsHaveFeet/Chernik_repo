{
	//global volume control
	global.master_volume = 1;
	global.music_volume = 1;
	
	//info for the song we are currently playing
	song_instance = noone;
	song_asset = noone;
	target_song_asset = current_sound;
	start_fade_in_time = 1200;//how many frames to fade in the new song
	fade_in_instance_volume = 1;//the volume of song_instance

}