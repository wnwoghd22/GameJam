/// @description 

if room == Rm_top {
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 100, @"Reverse
< 1 player > 
move : WASD + cursor, fire : click
< 2 players >
1p - move : arrows + cursor, fire : click
2p - move : WASD, fire : space

shift : switch space
")
	draw_set_halign(fa_left);
}