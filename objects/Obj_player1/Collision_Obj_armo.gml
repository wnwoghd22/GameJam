/// @description collision bullet

if other.belong == global.current_space {
	if !get_damage
		player_get_damage(10);
	
	with(other) {
		instance_destroy();
	}
}