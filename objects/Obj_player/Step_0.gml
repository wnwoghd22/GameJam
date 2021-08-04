/// @description controller(move, shot)

if !global.pause {
	if !global.two_players
		player_control_general();
	else
		global.controller[player_index]();

	//if player is damaged
	player_flash();
}