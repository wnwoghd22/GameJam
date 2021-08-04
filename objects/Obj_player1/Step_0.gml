/// @description controller(move, shot)

if !global.pause {
	if !global.two_players
		player_control_general();
	else
		player_one_control();

	//if player is damaged
	player_flash();
}