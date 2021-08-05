/// @description

if other.belong == global.current_space {
	instance_destroy();
		show_debug_message("hit");

	with(other) {
		show_debug_message("other")
		if --enemy_health == 0 {
			
			show_debug_message("destroy")
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