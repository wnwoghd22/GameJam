/// @description spawn elements

element = instance_create_layer(irandom(room_width), -100, "Instances_back", Obj_backgound);
element.sprite_index = sprite_list[irandom(array_length(sprite_list) - 1)];

alarm[0] = 10;