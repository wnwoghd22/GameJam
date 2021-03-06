function boss_orbit_create() {
	boss_health = 30;
	belong = e_space.matter;
	get_damage = boss_orbit_body_get_damage;
	
	angle = 0;
	
	orbit_len = 100;
	orbit[0] = instance_create_layer(
		x + lengthdir_x(orbit_len, angle), y + lengthdir_y(orbit_len, angle),
		"Instances", Obj_boss
	);
	orbit[1] = instance_create_layer(
		x + lengthdir_x(orbit_len, angle + 180), y + lengthdir_y(orbit_len, angle + 180),
		"Instances", Obj_boss
	);
	
	orbit[0].sprite_index = Spr_boss_orbit_unit;
	orbit[0].belong = e_space.matter;
	orbit[1].sprite_index = Spr_boss_orbit_unit;
	orbit[1].belong = e_space.antimatter;
	
	orbit[0].fire_deg = 0;
	orbit[1].fire_deg = 0;
	orbit[0].fire_term = 3;
	orbit[1].fire_term = 3;
	
	method_step = boss_orbit_body_step;
	orbit[0].method_step = boss_orbit_unit_step;
	orbit[1].method_step = boss_orbit_unit_step;
}

function boss_orbit_body_step() {
	if !flag {
		angle += 5;
		if angle >= 360 angle = 0;
	} else {
		angle -= 5;
		if angle < 0 angle = 355;
	}
	
	orbit[0].x = x + lengthdir_x(orbit_len, angle);
	orbit[0].y = y + lengthdir_y(orbit_len, angle);
	
	orbit[1].x = x + lengthdir_x(orbit_len, angle + 180);
	orbit[1].y = y + lengthdir_y(orbit_len, angle + 180);
}

function boss_orbit_unit_step() {
	if fire_delta > 0 { --fire_delta; }

	if fire_delta == 0 {
		for(i = 0; i < 3; ++i) {
				create_bullet(x, y, x + lengthdir_x(1650, fire_deg + i * 120), y + lengthdir_y(1650, fire_deg + i * 120), belong);
		}
		if !flag { fire_deg = fire_deg == 355 ? 0 : fire_deg + 5; }
		else { fire_deg = fire_deg == 0 ? 355 : fire_deg - 5; }
		fire_delta = fire_term;
	}
}

function boss_orbit_body_get_damage() {
	if --boss_health == 0 {
		score += 100;
		
		instance_destroy(orbit[0]);
		instance_destroy(orbit[1]);
		instance_create_layer(x, y, "Instances", Obj_item_life);
		instance_destroy();
		
		destroy_effect();
		spawn();
	}
}