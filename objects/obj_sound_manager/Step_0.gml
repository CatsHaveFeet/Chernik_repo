{
	var final_vol = global.music_volume * global.master_volume;
	
	//Play the target song
	if (song_asset != target_song_asset){
		//Play the song
		if (audio_exists(target_song_asset)) {
			//Play the song and store it's instance in a variable
			song_instance = audio_play_sound(target_song_asset, 4, true);
		
			//Start the song's volume at 0
			audio_sound_gain(song_instance, 0, 0);
			fade_in_instance_volume = 0;
		}
		
		//Set the song_asset to match the target_song_asset
		song_asset = target_song_asset;
	}
	
	//Volume control
	//Main song volume
	if (audio_is_playing(song_instance)) {
		//Fade the song in
		if (start_fade_in_time > 0) {
			if (fade_in_instance_volume < 1) {
				fade_in_instance_volume += 1 / start_fade_in_time;
			}
			else {
				fade_in_instance_volume = 1;
			}
		}
		//Immediately start the song if the fade in time is 0 frames
		else {
			fade_in_instance_volume = 1;
		}
		
		//Actually set the gain
		audio_sound_gain(song_instance, fade_in_instance_volume * final_vol, 0);
	}

}