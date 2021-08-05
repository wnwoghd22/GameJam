function spawn() {
	if (global.spawn_order < 8)
		spawn_enemy();
	else if (global.spawn_order == 8)
		spawn_obstacle();
	else if (global.spawn_order == 9)
		spawn_boss();
		
	global.spawn_order = global.spawn_order == 9 ? 0 : global.spawn_order + 1;
}

function spawn_enemy() {
	var enemy_image_list = [
		Spr_En1,
		Spr_ufo_small
	];
	var enemy_fire_pattern = [
		pattern_random,
		pattern_bloom,
		pattern_homing
	];
	
	global.enemy_num = irandom_range(1, 3);
	
	for (var i = 0; i < global.enemy_num; ++i) {
		create_enemy(
			room_width * (i + 1) / (global.enemy_num + 1), room_height / 5,
			enemy_image_list[irandom(array_length(enemy_image_list) - 1)],
			irandom_range(3, 5), choose(e_space.matter, e_space.antimatter),
			enemy_fire_pattern[irandom(array_length(enemy_fire_pattern) - 1)], irandom_range(7, 15)
		)
	}
}

function spawn_obstacle() {
	static obstacle_list = [
		Obj_obs_two_lasers
	];
	instance_create_layer(0, 0, "Instances", obstacle_list[irandom(array_length(obstacle_list) - 1)]);	
}

function spawn_boss() {
	static boss_list = [
		Obj_boss_orbit_body
	];
	instance_create_layer(room_width / 2, room_height / 5, "Instances", boss_list[irandom(array_length(boss_list) - 1)]);	
}