/*
 * size : 1366 * 1366
 */
function obstacle_S_curve_create() {
	left_wall = instance_create_layer(x, y - 455, "Instances", Obj_obstacle_moving);
	left_wall.sprite_index = Spr_wall_S_curve;
	left_wall.image_xscale = 500;
	left_wall.image_yscale = 10;
	right_wall = instance_create_layer(x + room_width, y - 910, "Instances", Obj_obstacle_moving);
	right_wall.sprite_index = Spr_wall_S_curve;
	right_wall.image_xscale = -500;
	right_wall.image_yscale = 10;

	laser_matter = instance_create_layer(x, y, "Instances", Obj_obstacle_moving);
	laser_matter.sprite_index = Spr_laser_two_lasers;
	laser_matter.belong = e_space.matter;
	laser_matter.image_angle = 90;

	laser_anti = instance_create_layer(x + room_width, y, "Instances", Obj_obstacle_moving);
	laser_anti.sprite_index = Spr_laser_two_lasers;
	laser_anti.belong = e_space.antimatter;
	laser_anti.image_alpha = 0.3;
	laser_anti.image_angle = 90;

	matter_spd = 10;
	anti_spd = 5;
	laser_matter_dir = true;
	laser_anti_dir = false;
	
	method_step = obstacle_S_curve_step;
	method_destroy = obstacle_S_curve_destroy;
}

function obstacle_S_curve_step() {
	laser_matter.x +=matter_spd * (laser_matter_dir ? 1 : -1);
	laser_anti.x += anti_spd * (laser_anti_dir ? 1 : -1);

	if laser_matter.x <= 0 { laser_matter_dir = true; }
	else if laser_matter.x >= room_width { laser_matter_dir = false; }

	if laser_anti.x <= 0 { laser_anti_dir = true; }
	else if laser_anti.x >= room_width { laser_anti_dir = false; }
	
	if y > (1366 + room_height) instance_destroy();	
}

function obstacle_S_curve_destroy() {
	instance_destroy(left_wall);
	instance_destroy(right_wall);
	instance_destroy(laser_matter);
	instance_destroy(laser_anti);

	spawn();
}