function boss_orbit_create() {
	belong = e_space.matter;
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
	orbit[0].fire_term = 10;
	orbit[1].fire_term = 10;
	
	method_step = boss_orbit_body_step;
	orbit[0].method_step = boss_orbit_unit_step;
	orbit[1].method_step = boss_orbit_unit_step;
}

function boss_orbit_body_step() {
	show_debug_message("boss_step");
	
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
	
	for(i = 0; i < 3; ++i) {
			create_bullet(x, y, x + lengthdir_x(1650, fire_deg + i * 120), y + lengthdir_y(1650, fire_deg + i * 120), belong);
	}
	if !flag { fire_deg = fire_deg == 355 ? 0 : fire_deg + 5; }
	else { fire_deg = fire_deg == 0 ? 355 : fire_deg - 5; }
	
}