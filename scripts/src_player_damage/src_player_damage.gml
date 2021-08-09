function player_flash() {
	if get_damage {
		if safe_term > 0 {
			if safe_term % 5 == 0
				image_alpha = image_alpha == 0.3 ? 0.7 : 0.3;
			--safe_term;
		} else if safe_term == 0 {
			image_alpha = 1;
			safe_term = 30;
			get_damage = false;
		}
	}
}

function player_get_damage(num) {
	get_damage = true;
	global.health[player_index] -= num;
	if global.health[player_index] <= 0  {
		instance_destroy();
		destroy_effect();
	}
	if global.health[0] <= 0 && global.health[1] <= 0 {
		with(instance_find(Obj_gm, 0)) {
			alarm_set(0, 30);
		}
	}
}