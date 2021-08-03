/// @description tab matter space

if keyboard_check_pressed(vk_shift) && !global.pause {
	if global.current_space == e_space.matter global.current_space = e_space.antimatter;
	else if global.current_space == e_space.antimatter global.current_space = e_space.matter;
}

if room == Rm_game {
	
	if keyboard_check_pressed(vk_escape) {
		if !global.pause { 
			global.pause = true; 
			//instance_deactivate_all(1); 
		}
		else if global.pause { 
			global.pause = false;
			//instance_activate_all();
		}
	}
	
	switch global.current_space {
	case e_space.matter :
		if global.energy < global.max_energy {
			if !global.pause {
				++global.energy;
			}
		}
		break;
	case e_space.antimatter :
		if global.energy > 0 {
			if !global.pause {
				--global.energy;
			}
		}
		else if global.energy == 0 {
			global.current_space = e_space.matter;
		}
		break;
	default :
		break;
	}
}