/// @description 

if !flag && global.current_space == e_space.antimatter {
		moveSpeed = 1;
		flag = true;
}
if flag && global.current_space == e_space.matter {
		moveSpeed = 3;
		flag = false;
}

if !global.pause {
	y += moveSpeed;
}

if y > room_height instance_destroy();