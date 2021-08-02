function create_enemy(
	x, y,
	image,
	life,
	space,
	pattern,
	fire_term
) {
	enemy = instance_create_layer(x, y, "Instances", Obj_enemy);
	enemy.image = image;
	enemy.enemy_life = life;
	enemy.belong = space;
	enemy.fire_pattern = pattern;
	enemy.fire_term = fire_term;
	enemy.fire_delta = fire_term;
}