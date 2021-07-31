/// @description move
if inertia == false && belong != e_space.neutral {
	inertia = true;
	speed = moveSpeed;
}

if flag = false && global.current_space != belong {
	image_alpha = 0.3;
	direction += 180;
	flag = true;
}
if flag = true && global.current_space == belong {
	image_alpha = 1;
	direction += 180;
	flag = false;
}

//if ((x - start_x) * cos(degtorad(origin_dir)) < 0 &&
if ((x - start_x) * cos(degtorad(origin_dir)) < -1 ||
    (start_y - y) * sin(degtorad(origin_dir)) < -1 )
	instance_destroy();

if sqrt(sqr(x - start_x) + sqr(y - start_y)) > 2000 instance_destroy();
