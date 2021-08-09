/// @description

if other.belong == global.current_space {
	instance_destroy();

	with(other) {
		enemy_health -= 1;
		if enemy_health == 0 {
			score += 10;
			
			drop_item();
			
			instance_destroy();
			destroy_effect();
			
			if --global.enemy_num == 0
				spawn();
		}
	}
}