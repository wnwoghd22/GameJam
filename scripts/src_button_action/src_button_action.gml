function test_action() {
	show_debug_message("Button clicked: " + _text);
}

function game_start() {
	room_goto(Rm_game);
}

function game_start_1p() {
	global.two_players = false;
	game_start();
}

function game_start_2p() {
	global.two_players = true;
	game_start();
}

function goto_menu() {
	room_goto(Rm_top);	
}