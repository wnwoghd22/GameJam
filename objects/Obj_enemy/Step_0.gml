/// @description 

if flag == false && belong != global.current_space {
	image_alpha = 0.3;
	flag = true;
}
if flag == true && belong == global.current_space {
	image_alpha = 1;
	flag = false;
}

if !global.pause {
	if !is_move {
		if fire_delta > 0 { --fire_delta; }

		if fire_delta == 0 && fire_pattern >= 0 {
			script_execute(fire_pattern);
			fire_delta = fire_term;
		}
	}
	
	if is_move {
		if point_distance(x, y, target_x, target_y) > 5 {
			move_towards_point(target_x, target_y, 5);
	    }
		else if point_distance(x, y, target_x, target_y) < 5 {
			speed = 0;
			is_move = false;
		}
	}
}