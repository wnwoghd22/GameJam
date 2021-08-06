/// @description 

if flag == false && belong != global.current_space {
	image_alpha = 0.3;
	flag = true;
}
if flag == true && belong == global.current_space {
	image_alpha = 1;
	flag = false;
}
