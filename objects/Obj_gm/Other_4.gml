/// @description

global.current_space = e_space.matter;

switch room {
case Rm_top :
	ufo_left = instance_create_layer(room_width * (1 / 5), room_height / 2, "Instances", Obj_ufo_top);
	ufo_left.belong = e_space.matter;
	
	ufo_right = instance_create_layer(room_width * (4 / 5), room_height / 2, "Instances", Obj_ufo_top);
	ufo_right.belong = e_space.antimatter;
	
	create_button(room_width / 2, room_height * (2/3), 200, 100, "1 Player", game_start_1p);
	create_button(room_width / 2, room_height * (2/3) + 100, 200, 100, "2 Players", game_start_2p);
	
	//create_button(room_width / 2, room_height * (2/3) + 200, 200, 100, "test", game_test);
	
	break;
case Rm_game :
	score = 0;
	global.max_health[0] = 100;
	global.health[0] = global.max_health[0];
	
	if global.two_players {
		var p1 = instance_create_layer(room_width * (1/4), room_height * (4 / 5), "Instances", Obj_player);
		p1.sprite_index = Spr_ship_Fernando;
		p1.player_index = 0;
		
		var p2 = instance_create_layer(room_width * (3/4), room_height * (4 / 5), "Instances", Obj_player);
		p2.sprite_index = Spr_ship_F_2;
		p2.player_index = 1;
	
		global.max_health[1] = 100;
		global.health[1] = global.max_health[1];
	} else {
		var p1 = instance_create_layer(room_width / 2, room_height * (4 / 5), "Instances", Obj_player);
		p1.sprite_index = Spr_ship_Fernando;
		p1.player_index = 0;
	
		global.max_health[1] = 1;
		global.health[1] = 0;
	}
	global.max_energy = 100;
	global.energy = global.max_energy;
	global.pause = 0;
	
	global.spawn_order = 0;
	spawn();
	
	break;
case Rm_gameOver :
	
	create_button(room_width / 2, room_height * (2/3), 200, 100, "Retry", game_start);
	create_button(room_width / 2, room_height * (2/3) + 100, 200, 100, "Back to Menu", goto_menu);
	
	break;
}