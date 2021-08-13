function destroy_effect() {
	play_SE_crash();
	repeat(10) {
		var _debris = instance_create_layer(x, y, "Instances", Obj_debris);
		_debris.direction = irandom_range(0, 359);
	}
}

function drop_item() {
		var drop_rate = irandom(30) > 20;
		if drop_rate 
				instance_create_layer(x, y, "Instances", 
				choose(
					Obj_item_life,
					Obj_item_armo
				));
}