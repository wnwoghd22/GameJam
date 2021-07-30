/// @description spawn elements

//instance_create_layer(irandom(room_width), 0, "Instances_back", elements[irandom(elements.length)]);

element_num = irandom(2);
instance_create_layer(irandom(room_width), 0, "Instances_back", elements[element_num]);

alarm[0] = 10;