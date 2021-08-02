function pattern_bloom() {
	if !flag {
		for(i = 0; i < 3; ++i) {
			armo = instance_create_layer(x, y, "Instances", Obj_armo1);
			armo.belong = global.current_space;
			armo.setDir(matter_deg + i * 120);
			armo.start_x = x;
			armo.start_y = y;
		}
		for(i = 0; i < 3; ++i) {
			armo_anti = instance_create_layer(x, y, "Instances", Obj_armo1);
			anti_x = x + lengthdir_x(2000, anti_deg - i * 120);
			anti_y = y + lengthdir_y(2000, anti_deg - i * 120);
			armo_anti.start_x = anti_x;
			armo_anti.start_y = anti_y;
			armo_anti.setDir(anti_deg - i * 120 + 180);
			armo_anti.belong = global.current_space == e_space.matter ? e_space.antimatter : e_space.matter;
		}

		if(matter_deg == 355) matter_deg = 0;
		else matter_deg += 5;

		if(anti_deg == 0) anti_deg = 355;
		else anti_deg -= 5;
	} else {
		if(matter_deg == 0) matter_deg = 355;
		else matter_deg -= 5;
	
		if(anti_deg == 355) anti_deg = 0;
		else anti_deg += 5;
	}
}