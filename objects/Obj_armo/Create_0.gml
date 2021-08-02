start_x = 0;
start_y = 0;

moveSpeed = 3;

belong = e_space.neutral;
inertia = false;

flag = false;

function setDir(dir) {
	origin_dir = dir;
	direction = origin_dir;
	image_angle = direction + 90;
}

setDir(random_range(0, 359));

//speed = moveSpeed;