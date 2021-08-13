/// @description

score += 10;

audio_play_sound(snd_notification, 1, false);

if is_method(other._action)
	other._action(player_index);
	
instance_destroy(other);