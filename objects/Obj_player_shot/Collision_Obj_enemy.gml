/// @description

if other.belong == global.current_space {
	instance_destroy();

	with(other) {
		if --enemy_life == 0 {
			score += 10;
			
			var drop_rate = irandom(30) > 20;
			if drop_rate 
				instance_create_layer(x, y, "Instances", Obj_life);
			
			instance_destroy();
			if --global.enemy_num == 0
				spawn();
		}
	}
}