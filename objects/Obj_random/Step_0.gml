/// @description

event_inherited();

fire_delta -= 1;

if fire_delta == 0 {
	armo = instance_create_layer(x, y, "Instances", Obj_armo1);
	armo.belong = global.current_space;
	armo.start_x = x;
	armo.start_y = y;

	anti_x = random_range(x - 2000, x + 2000);
	anti_y = sqrt(abs(sqr(2000) - sqr(anti_x)));
		
	armo_anti = instance_create_layer(anti_x, anti_y, "Instances", Obj_armo1);
	armo_anti.belong = global.current_space == e_space.matter ? e_space.antimatter : e_space.matter;
	armo_anti.setDir(point_direction(x, y, anti_x, anti_y));
	armo_anti.start_x = x;
	armo_anti.start_y = y;
		
	fire_delta = fire_term;
}