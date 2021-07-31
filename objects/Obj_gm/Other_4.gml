/// @description

global.current_space = e_space.matter;

if room == Rm_top {
	ufo_left = instance_create_layer(room_width * (1 / 5), room_height / 2, "Instances", Obj_ufo_top);
	ufo_left.belong = e_space.matter;
	
	ufo_right = instance_create_layer(room_width * (4 / 5), room_height / 2, "Instances", Obj_ufo_top);
	ufo_right.belong = e_space.antimatter;
	
	create_button(room_width / 2, room_height * (2/3), 200, 100, "1 Player", game_start);
	create_button(room_width / 2, room_height * (2/3) + 100, 200, 100, "2 Players", test_action);
}