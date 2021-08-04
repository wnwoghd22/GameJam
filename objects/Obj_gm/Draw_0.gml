/// @description 

switch room {
case Rm_top :
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 100, @"Reverse
< 1 player > 
move : WASD or Arrows, fire : Space or Enter
< 2 players >
1p - move : WASD, fire : Space
2p - move : Arrows, fire : Enter

shift : switch space
")
	draw_set_halign(fa_left);
	break;
case Rm_game :
	draw_text(10, 35 + global.two_players * 12, string(score));
	break;
case Rm_gameOver :
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 100, @"Game Over
")
	draw_text(room_width / 2, 150, "score :" + string(score));
	draw_set_halign(fa_left);

	break;
default :
	break;
}