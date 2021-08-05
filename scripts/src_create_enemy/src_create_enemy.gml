function create_enemy(
	_x, _y,
	_image,
	_health,
	_space,
	_pattern,
	_fire_term
) {
	enemy = instance_create_layer(_x, _y, "Instances", Obj_enemy);
	enemy.sprite_index = _image;
	enemy.enemy_health = _health;
	enemy.belong = _space;
	set_pattern(enemy, _pattern);
	enemy.fire_term = _fire_term;
	enemy.fire_delta = _fire_term;
}