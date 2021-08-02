enum e_spawn {
	none = 0,
	enemy = 1,
	obstacle = 2,
	boss = 3,
}

function spawn() {
	//sglobal.spawn_flag = choose(e_spawn.enemy, e_spawn.obstacle);
	
	global.spawn_flag = e_spawn.enemy;
	
	switch global.spawn_flag {
	case e_spawn.enemy:
		_enemy_num = irandom_range(1, 3);
		spawn_enemy(_enemy_num);
		break;
	case e_spawn.obstacle:
		spawn_obstacle();
		break;
	case e_spawn.boss:
		break;
	case e_spawn.none:
		break;
	}
}

function spawn_enemy(num) {
	global.enemy_num = num;
	
	static enemy_image_list = [
		Spr_En1,
		Spr_ufo_small
	];
	static enemy_fire_pattern = [
		pattern_random,
		pattern_bloom,
		pattern_homing,
	];
	
	for (i = 0; i < num; ++i) {
		create_enemy(
			room_width * (i + 1) / (num + 1), room_height / 5,
			enemy_image_list[irandom(array_length(enemy_image_list) - 1)],
			3, choose(e_space.matter, e_space.antimatter),
			enemy_fire_pattern[irandom(array_length(enemy_fire_pattern) - 1)], irandom_range(7, 15)	
		)
	}
}

function spawn_obstacle() {
	static obstacle_list = [
		Obj_obs_two_lasers,
	];
	instance_create_layer(0, 0, "Instances", obstacle_list[irandom(array_length(obstacle_list) - 1)]);	
}
