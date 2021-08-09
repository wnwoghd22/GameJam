// for one player mode
function player_control_general() {
	//move
	upBtn = keyboard_check(vk_up) || keyboard_check(ord("W"));
	leftBtn = keyboard_check(vk_left) || keyboard_check(ord("A"));
	downBtn = keyboard_check(vk_down) || keyboard_check(ord("S"));
	rightBtn = keyboard_check(vk_right) || keyboard_check(ord("D"));

	vx = rightBtn - leftBtn;
	vy = downBtn - upBtn;

	if vx != 0 {
		temp_X = x + vx * moveSpd;
		wall = collision_point(temp_X, y, Obj_obstacle, true, true);
		if !wall || wall.belong != e_space.neutral
			x = temp_X;
	}
	if vy != 0 {
		temp_Y = y + vy * moveSpd;
		wall = collision_point(x, temp_Y, Obj_obstacle, true, true);
		if !wall || wall.belong != e_space.neutral
			y = temp_Y;
	}

	if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) {
		player_attack(attack_type);
	}
}

// two players mode - for player one
function player_one_control() {
	//move
	upBtn = keyboard_check(ord("W"));
	leftBtn = keyboard_check(ord("A"));
	downBtn = keyboard_check(ord("S"));
	rightBtn = keyboard_check(ord("D"));

	vx = rightBtn - leftBtn;
	vy = downBtn - upBtn;

	if vx != 0 {
		temp_X = x + vx * moveSpd;
		wall = collision_point(temp_X, y, Obj_obstacle, true, true);
		if !wall || wall.belong != e_space.neutral
			x = temp_X;
	}
	if vy != 0 {
		temp_Y = y + vy * moveSpd;
		wall = collision_point(x, temp_Y, Obj_obstacle, true, true);
		if !wall || wall.belong != e_space.neutral
			y = temp_Y;
	}

	if keyboard_check_pressed(vk_space) {
		player_attack(attack_type);
	}
}

// two players mode - for player two
function player_two_control() {
	//move
	upBtn = keyboard_check(vk_up);
	leftBtn = keyboard_check(vk_left);
	downBtn = keyboard_check(vk_down);
	rightBtn = keyboard_check(vk_right);

	vx = rightBtn - leftBtn;
	vy = downBtn - upBtn;

	if vx != 0 {
		temp_X = x + vx * moveSpd;
		wall = collision_point(temp_X, y, Obj_obstacle, true, true);
		if !wall || wall.belong != e_space.neutral
			x = temp_X;
	}
	if vy != 0 {
		temp_Y = y + vy * moveSpd;
		wall = collision_point(x, temp_Y, Obj_obstacle, true, true);
		if !wall || wall.belong != e_space.neutral
			y = temp_Y;
	}

	if keyboard_check_pressed(vk_enter) {
		player_attack(attack_type);
	}
}