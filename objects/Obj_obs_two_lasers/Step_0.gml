/// @description

// Inherit the parent event
event_inherited();

laser_anti.y += add_spd * (laser_anti_dir ? 1 : -1);

if laser_anti.y >= y {
	laser_anti_dir = false;
}

if laser_anti.y <= y - 2000 {
	laser_anti_dir = true;
}

if y > (2000 + room_height) instance_destroy();