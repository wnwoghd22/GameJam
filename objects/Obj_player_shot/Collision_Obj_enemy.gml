/// @description

if other.belong == global.current_space {
	instance_destroy();

	with(other) {
		if --enemy_life == 0
			instance_destroy();	
	}
}