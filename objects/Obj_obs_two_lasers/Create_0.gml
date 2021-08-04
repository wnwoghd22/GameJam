/// @description 

// Inherit the parent event
event_inherited();

left_wall = instance_create_layer(x, y, "Instances", Obj_wall_two_lasers);
right_wall = instance_create_layer(x + 1366, y, "Instances", Obj_wall_two_lasers);
right_wall.image_xscale = -1;

for(i = 0; i < 3; ++i) {
	laser[i] = instance_create_layer(x, y - 500 * (i + 1), "Instances", Obj_laser_two_lasers);
	laser[i].belong = e_space.matter;
}

laser_anti = instance_create_layer(x, y, "Instances", Obj_laser_two_lasers);
laser_anti.belong = e_space.antimatter;
laser_anti.image_alpha = 0.3;

add_spd = 10;
laser_anti_dir = false;