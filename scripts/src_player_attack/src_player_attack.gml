function player_attack(_attack_type) {
	play_SE_fire();
	
	switch _attack_type {
	case 0 :
		player_attack_normal1();
		break;
	case 1 :
		player_attack_normal2();
		break;
	case 2 :
		player_attack_normal3();
		break;
	case 3 :
		player_attack_normal4();
		break;
	case 4 :
		player_attack_normal5();
		break;
	}
}

function player_attack_normal1() {
	bullet = instance_create_layer(x, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
}

function player_attack_normal2() {
	bullet = instance_create_layer(x - 5, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x + 5, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
}

function player_attack_normal3() {
	bullet = instance_create_layer(x - 10, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x + 10, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
}

function player_attack_normal4() {
	bullet = instance_create_layer(x - 15, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x - 5, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x + 5, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x + 15, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
}

function player_attack_normal5() {
	bullet = instance_create_layer(x, y, "Instances", Obj_player_bullet);
	bullet.direction = direction + 10;
	bullet.image_angle = direction + 100;
	
	bullet = instance_create_layer(x - 10, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x + 10, y, "Instances", Obj_player_bullet);
	bullet.direction = direction;
	bullet.image_angle = direction + 90;
	
	bullet = instance_create_layer(x, y, "Instances", Obj_player_bullet);
	bullet.direction = direction - 10;
	bullet.image_angle = direction + 80;
}