function pause_all_sound() {
	if audio_is_playing(snd_top_game_retro) audio_pause_sound(snd_top_game_retro);
	if audio_is_playing(snd_top_game_backward) audio_pause_sound(snd_top_game_backward);
	if audio_is_playing(snd_background_game) audio_pause_sound(snd_background_game);
	if audio_is_playing(snd_background_boss) audio_pause_sound(snd_background_boss);
}

function play_sound_top() {
	pause_all_sound();
	
	switch global.current_space {
	case e_space.matter :
		if audio_is_paused(snd_top_game_retro) audio_resume_sound(snd_top_game_retro);
		else audio_play_sound(snd_top_game_retro, 2, true);
		break;
	case e_space.antimatter :
		audio_play_sound(snd_top_game_backward, 2, true);
		break;
	default :
		break;
	}
}

function play_sound_game() {
	pause_all_sound();
	
	switch global.current_space {
	case e_space.matter :
		if global.spawn_order < 8 {
			if audio_is_paused(snd_background_game) audio_resume_sound(snd_background_game);
			else audio_play_sound(snd_background_game, 2, true);
		} else {
			if audio_is_paused(snd_background_boss) audio_resume_sound(snd_background_boss);
			else audio_play_sound(snd_background_boss, 2, true);
		}
		break;
	case e_space.antimatter :
		audio_play_sound(snd_top_game_backward, 2, true);
		break;
	default :
		break;
	}
}

function play_SE_fire() {
	audio_play_sound(snd_shooting, 1, false);
}

function play_SE_crash() {
	audio_play_sound(snd_explode, 1, false);
}