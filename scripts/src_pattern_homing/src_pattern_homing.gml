function pattern_homing() {
	var instance_player = instance_nearest(x, y, Obj_player);
	if instance_player {
		fire_dir = point_direction(x, y, instance_player.x, instance_player.y);
		
		create_bullet(x, y, x + lengthdir_x(1650, fire_dir), y + lengthdir_y(1650, fire_dir), e_space.matter);
		create_bullet(x, y, x + lengthdir_x(1650, fire_dir + 30), y + lengthdir_y(1650, fire_dir + 30), e_space.antimatter);
		create_bullet(x, y, x + lengthdir_x(1650, fire_dir - 30), y + lengthdir_y(1650, fire_dir - 30), e_space.antimatter);
	}
}