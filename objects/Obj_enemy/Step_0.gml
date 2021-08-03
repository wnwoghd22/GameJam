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
	if fire_delta > 0 { --fire_delta; }

	if fire_delta == 0 && fire_pattern >= 0 {
		script_execute(fire_pattern);
		fire_delta = fire_term;
	}
}