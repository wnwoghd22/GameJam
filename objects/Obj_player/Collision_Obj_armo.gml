/// @description collision bullet

if other.belong == global.current_space {

	get_damage = true;
	lives -= 10;
	
	with(other) {
		instance_destroy();
	}
}