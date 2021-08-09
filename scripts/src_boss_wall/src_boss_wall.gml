/* boss with walls
 * this boss has several walls - matter, antimatter, matter
 * player needs to make bullet through these walls
 */

function boss_wall_create() {
	boss_health = 3;
	belong = e_space.matter;
	get_damage = boss_wall_body_get_damage;
	matter_deg = 0;
	anti_deg = 0;
	rotate_term = 5;
	
	for (var i = 0; i < 4; ++i ) {
		inner_wall[i] = instance_create_layer(x + lengthdir_x(50, i * 90), y + lengthdir_y(50, i * 90), "Instances", Obj_boss);	
		inner_wall[i].belong = e_space.antimatter;
		inner_wall[i].sprite_index = Spr_boss_wall;
		inner_wall[i].image_xscale = 2;
		inner_wall[i].image_yscale = 50;
		inner_wall[i].image_angle = i * 90;
		
		/*
		middle_wall[i] = instance_create_layer(x + lengthdir_x(75, i * 90), y + lengthdir_y(75, i * 90), "Instances", Obj_boss);
		middle_wall[i].belong = e_space.antimatter;
		middle_wall[i].sprite_index = Spr_boss_wall;
		middle_wall[i].image_xscale = 2;
		middle_wall[i].image_yscale = 75;
		middle_wall[i].image_angle = i * 90;
		*/
		
		outer_wall[i] = instance_create_layer(x + lengthdir_x(100, i * 90), y + lengthdir_y(100, i * 90), "Instances", Obj_boss);
		outer_wall[i].belong = e_space.matter;
		outer_wall[i].sprite_index = Spr_boss_wall;
		outer_wall[i].image_xscale = 2;
		outer_wall[i].image_yscale = 100;
		outer_wall[i].image_angle = i * 90;
		
		unit[i] = instance_create_layer(x + lengthdir_x(141, i * 90 + 45), y + lengthdir_y(141, i * 90 + 45), "Instances", Obj_boss);
		unit[i].method_step = boss_wall_unit_step;
		unit[i].belong = i % 2 == 0 ? e_space.matter : e_space.antimatter;
		with unit[i] { boss_wall_unit_create(); }
	}
	
	method_step = boss_wall_body_step;
}

function boss_wall_body_step() {
	if --rotate_term <= 0 {
		for (var i = 0; i < 4; ++i ) {
			inner_wall[i].x = x + lengthdir_x(50, anti_deg + i * 90);
			inner_wall[i].y = y + lengthdir_y(50, anti_deg + i * 90);
			inner_wall[i].image_angle = anti_deg + i * 90;
		
			/*
			middle_wall[i].x = x + lengthdir_x(75, anti_deg + i * 90);
			middle_wall[i].y = y + lengthdir_y(75, anti_deg + i * 90);
			middle_wall[i].image_angle = anti_deg + i * 90;
			*/
			
			outer_wall[i].x = x + lengthdir_x(100, matter_deg + i * 90);
			outer_wall[i].y = y + lengthdir_y(100, matter_deg + i * 90);
			outer_wall[i].image_angle = matter_deg + i * 90;
			
			unit[i].x = x + lengthdir_x(141, matter_deg + i * 90 + 45);
			unit[i].y = y + lengthdir_y(141, matter_deg + i * 90 + 45);
		}
	
		if !flag {
			if(matter_deg == 355) matter_deg = 0; else matter_deg += 5;
			if(anti_deg == 0) anti_deg = 355; else anti_deg -= 5;
		} else {
			if(matter_deg == 0) matter_deg = 355; else matter_deg -= 5;
			if(anti_deg == 355) anti_deg = 0; else anti_deg += 5;
		}
		rotate_term = 3;
	}
}

function boss_wall_unit_create() {
	fire_term = 40;
	fire_delta = fire_term;
}

function boss_wall_unit_step() {
	if --fire_delta <= 0 {
		create_bullet(x, y, x, y + 800, belong);
		create_bullet(x, y, x + lengthdir_x(1000, 240), y + lengthdir_y(1000, 240), belong);
		create_bullet(x, y, x + lengthdir_x(1000, 300), y + lengthdir_y(1000, 300), belong);
		
		fire_delta = fire_term;
	}
}

function boss_wall_body_get_damage() {
	if --boss_health == 0 {
		score += 100;
		
		for(var i = 0; i < 4; ++i) {
			instance_destroy(inner_wall[i]);
			//instance_destroy(middle_wall[i]);
			instance_destroy(outer_wall[i]);
			instance_destroy(unit[i]);
		}
		instance_create_layer(x, y, "Instances", Obj_item_life);
		instance_destroy();
		
		destroy_effect();
		spawn();
	}
}