/// @description

if other.belong == global.current_space {
	instance_destroy();

	with(other) {
		enemy_health -= 1;
		if enemy_health == 0 {
			score += 10;
			
			var drop_rate = irandom(30) > 20;
			if drop_rate 
				instance_create_layer(x, y, "Instances", Obj_item_life);
			
			instance_destroy();
			if --global.enemy_num == 0
				spawn();
		}
	}
}