/// @description

if other.belong == global.current_space {
	instance_destroy();

	with(other) {
		if !is_undefined(get_damage)
			get_damage();
	}
}