function set_pattern(_instance, _pattern){
	_instance.fire_pattern = _pattern;
	switch(_pattern) {
	case pattern_bloom:
		_instance.matter_deg = 0;
		_instance.anti_deg = 0;
		break;
	default:
		break;
	}
}

function create_bullet(x1, y1, x2, y2, matter) {
	if matter == global.current_space {
		bullet = instance_create_layer(x1, y1, "Instances", Obj_enemy_bullet);
	} else if matter != global.current_space {
		bullet = instance_create_layer(x2, y2, "Instances", Obj_enemy_bullet);
	}
	bullet.setDir(point_direction(x1, y1, x2, y2));
	bullet.belong = matter;
	bullet.start_x = x1;
	bullet.start_y = y1;
}