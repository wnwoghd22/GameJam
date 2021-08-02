function pattern_homing() {
	static instance_player = instance_find(Obj_player, 0);
	
	fire_dir = point_direction(x, y, instance_player.x, instance_player.y);
	if !flag {
		armo = instance_create_layer(x, y, "Instances", Obj_armo1);
		armo.belong = global.current_space;
		armo.setDir(fire_dir);
		armo.start_x = x;
		armo.start_y = y;
		
		anti_dir1 = fire_dir + 30;
		anti_x1 = x + lengthdir_x(2000, anti_dir1);
		anti_y1 = y + lengthdir_y(2000, anti_dir1);
	
		armo_anti1 = instance_create_layer(anti_x1, anti_y1, "Instances", Obj_armo1);
		armo_anti1.belong = global.current_space == e_space.matter ? e_space.antimatter : e_space.matter;
		armo_anti1.setDir(anti_dir1);
		armo_anti1.start_x = x;
		armo_anti1.start_y = y;
	
		anti_dir2 = fire_dir - 30;
		anti_x2 = x + lengthdir_x(2000, anti_dir2);
		anti_y2 = y + lengthdir_y(2000, anti_dir2);
		
		armo_anti2 = instance_create_layer(anti_x2, anti_y2, "Instances", Obj_armo1);
		armo_anti2.belong = global.current_space == e_space.matter ? e_space.antimatter : e_space.matter;
		armo_anti2.setDir(anti_dir2);
		armo_anti2.start_x = x;
		armo_anti2.start_y = y;
	} else {
		fire_x = x + lengthdir_x(2000, fire_dir);
		fire_y = y + lengthdir_y(2000, fire_dir);
		
		armo = instance_create_layer(fire_x, fire_y, "Instances", Obj_armo1);
		armo.belong = global.current_space == e_space.matter ? e_space.antimatter : e_space.matter;
		armo.setDir(fire_dir);
		armo.start_x = x;
		armo.start_y = y;
		
		anti_dir1 = fire_dir + 30;
	
		armo_anti1 = instance_create_layer(x, y, "Instances", Obj_armo1);
		armo_anti1.belong = global.current_space;
		armo_anti1.setDir(anti_dir1);
		armo_anti1.start_x = x;
		armo_anti1.start_y = y;
	
		anti_dir2 = fire_dir - 30;
		
		armo_anti2 = instance_create_layer(x, y, "Instances", Obj_armo1);
		armo_anti2.belong = global.current_space;
		armo_anti2.setDir(anti_dir2);
		armo_anti2.start_x = x;
		armo_anti2.start_y = y;
	}
}