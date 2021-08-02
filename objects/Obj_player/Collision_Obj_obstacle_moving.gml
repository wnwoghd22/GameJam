/// @description

if other.belong == e_space.neutral {
	y += other.moveSpeed;
}
else if global.current_space == other.belong {
	lives -= 30;
	get_damage = true;	
}