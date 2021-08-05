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
	if !is_undefined(method_step) method_step();
}