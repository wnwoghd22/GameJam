/// @description 

if !flag && global.current_space == e_space.antimatter {
		moveSpeed = 1;
		switch(belong) {
		case e_space.matter :
			image_alpha = 0.3;
			break;
		case e_space.antimatter :
			image_alpha = 1;
			break;
		default :
			break;
		}
		flag = true;
}
if flag && global.current_space == e_space.matter {
		moveSpeed = 3;
		switch(belong) {
		case e_space.matter :
			image_alpha = 1;
			break;
		case e_space.antimatter :
			image_alpha = 0.3;
			break;
		default :
			break;
		}
		flag = false;
}

y += moveSpeed;

if !is_undefined(method_step) method_step();