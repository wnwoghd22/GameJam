function play_sound_top() {
	if audio_is_playing(snd_top_game_retro) audio_stop_sound(snd_top_game_retro);
	if audio_is_playing(snd_top_game_backward) audio_stop_sound(snd_top_game_backward);
	
	switch global.current_space {
	case e_space.matter :
		audio_play_sound(snd_top_game_retro, 2, true);
		break;
	case e_space.antimatter :
		audio_play_sound(snd_top_game_backward, 2, true);
		break;
	default :
		break;
	}
}

function play_SE_fire() {
	
}

function play_SE_crush() {
	
}