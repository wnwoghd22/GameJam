/// @description 

bullet = instance_create_layer(x, y, "Instances", Obj_player_shot);
bullet.direction = direction;
bullet.image_angle = direction + 90;