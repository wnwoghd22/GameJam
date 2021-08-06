/* two lasers
 * consists with two types of lasers - matter, antimatter
 * size : 1366 * 2000
 *
 */
function obstacle_two_lasers_create() {
	left_wall = instance_create_layer(x, y, "Instances", Obj_obstacle_moving);
	left_wall.sprite_index = Spr_wall_two_lasers;
	right_wall = instance_create_layer(x + 1366, y, "Instances", Obj_obstacle_moving);
	right_wall.sprite_index = Spr_wall_two_lasers;
	right_wall.image_xscale = -1;

	for(var i = 0; i < 3; ++i) {
		laser[i] = instance_create_layer(x, y - 500 * (i + 1), "Instances", Obj_obstacle_moving);
		laser[i].sprite_index = Spr_laser_two_lasers;
		laser[i].belong = e_space.matter;
	}

	laser_anti = instance_create_layer(x, y, "Instances", Obj_obstacle_moving);
	laser_anti.sprite_index = Spr_laser_two_lasers;
	laser_anti.belong = e_space.antimatter;
	laser_anti.image_alpha = 0.3;

	add_spd = 10;
	laser_anti_dir = false;
	
	method_step = obstacle_two_lasers_step;
	method_destroy = obstacle_two_lasers_destroy;
}

function obstacle_two_lasers_step() {
	laser_anti.y += add_spd * (laser_anti_dir ? 1 : -1);

	if laser_anti.y >= y {
		laser_anti_dir = false;
	}

	if laser_anti.y <= y - 2000 {
		laser_anti_dir = true;	
	}

	if y > (2000 + room_height) instance_destroy();	
}

function obstacle_two_lasers_destroy() {
	instance_destroy(left_wall);
	instance_destroy(right_wall);
	for (i = 0; i < 3; ++i) instance_destroy(laser[i]);
	instance_destroy(laser_anti);

	spawn();
}