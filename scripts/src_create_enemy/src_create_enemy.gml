function create_enemy(
	x, y,
	image,
	health,
	space,
	pattern,
	fire_term
) {
	enemy = instance_create_layer(x, y, "Instances", Obj_enemy);
	enemy.sprite_index = image;
	enemy.enemy_health = health;
	enemy.belong = space;
	set_pattern(enemy, pattern);
	enemy.fire_term = fire_term;
	enemy.fire_delta = fire_term;
}