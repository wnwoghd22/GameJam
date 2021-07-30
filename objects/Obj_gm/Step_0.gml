/// @description tab matter space

if keyboard_check_pressed(vk_shift) {
	if global.current_space == e_space.matter global.current_space = e_space.antimatter;
	else if global.current_space == e_space.antimatter global.current_space = e_space.matter;
}