function create_enemy(
	_x, _y,
	_image,
	_health,
	_space,
	_pattern,
	_fire_term
) {
	enemy = instance_create_layer(room_width / 2, -50, "Instances", Obj_enemy);
	enemy.target_x = _x;
	enemy.target_y = _y;
	enemy.is_move = true;
	enemy.sprite_index = _image;
	enemy.enemy_health = _health;
	enemy.belong = _space;
	set_pattern(enemy, _pattern);
	enemy.fire_term = _fire_term;
	enemy.fire_delta = _fire_term;
}