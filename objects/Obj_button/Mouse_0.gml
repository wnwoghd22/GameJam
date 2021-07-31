/// @description 

if _hover && _action >= 0 script_execute(_action);

if _hover {
	instance_create_layer(x, y, "Instances", Obj_ufo_top);	
}