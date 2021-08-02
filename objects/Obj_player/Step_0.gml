/// @description controller(move, shot)

//rotate
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
direction = point_direction(x, y, mouse_x, mouse_y);

//move
upBtn = keyboard_check(vk_down) || keyboard_check(ord("W"));
leftBtn = keyboard_check(vk_left) || keyboard_check(ord("A"));
downBtn = keyboard_check(vk_up) || keyboard_check(ord("S"));
rightBtn = keyboard_check(vk_right) || keyboard_check(ord("D"));

vx = rightBtn - leftBtn;
vy = downBtn - upBtn;

if vx != 0 {
	temp_X = x + vx * moveSpd;
	if temp_X > 0 and temp_X < room_width
		x = temp_X;
}
if vy != 0 {
	temp_Y = y + vy * moveSpd;
	if temp_Y > 0 and temp_Y < room_height
		y = temp_Y;
}

player_flash();