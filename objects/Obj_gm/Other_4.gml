/// @description

global.current_space = e_space.matter;

switch room {
case Rm_top :
	ufo_left = instance_create_layer(room_width * (1 / 5), room_height / 2, "Instances", Obj_ufo_top);
	ufo_left.belong = e_space.matter;
	
	ufo_right = instance_create_layer(room_width * (4 / 5), room_height / 2, "Instances", Obj_ufo_top);
	ufo_right.belong = e_space.antimatter;
	
	create_button(room_width / 2, room_height * (2/3), 200, 100, "1 Player", game_start);
	create_button(room_width / 2, room_height * (2/3) + 100, 200, 100, "2 Players", test_action);
	
	break;
case Rm_game :
	score = 0;
	global.max_life = 100;
	lives = global.max_life;
	global.max_energy = 100;
	global.energy = global.max_energy;
	global.pause = 0;
	
	spawn();
	
	break;
case Rm_gameOver :
	
	create_button(room_width / 2, room_height * (2/3), 200, 100, "Retry", game_start);
	create_button(room_width / 2, room_height * (2/3) + 100, 200, 100, "Back to Menu", goto_menu);
	
	break;
}