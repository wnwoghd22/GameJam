function pattern_random() {
	armo_angle = random_range(0, 359);
	create_bullet(x, y, x + lengthdir_x(1650, armo_angle), y + lengthdir_y(1650, armo_angle), e_space.matter);

	anti_angle = random_range(0, 359);
	create_bullet(x, y, x + lengthdir_x(1650, anti_angle), y + lengthdir_y(1650, anti_angle), e_space.antimatter);
}