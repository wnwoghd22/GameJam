/// @description tab matter space

if keyboard_check_pressed(vk_shift) {
	if global.current_space == e_space.matter global.current_space = e_space.antimatter;
	else if global.current_space == e_space.antimatter global.current_space = e_space.matter;
}

if room == Rm_game {
	switch global.current_space {
	case e_space.matter :
		if energy < max_energy {
			++energy;	
		}
		break;
	case e_space.antimatter :
		if energy > 0 { --energy; }
		else if energy == 0 {
			global.current_space = e_space.matter;
		}
		break;
	default :
		break;
	}
}