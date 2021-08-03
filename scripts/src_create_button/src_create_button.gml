// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_button(x, y, width, height, text, action){
	var _button = instance_create_layer(x - width / 2, y - height / 2, "Instances", Obj_button);
	
	with _button {
		_width = width;
		_height = height;
		_text = text;
		_action = action;
	}
	
	return _button;
}