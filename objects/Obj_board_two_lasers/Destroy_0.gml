/// @description destroy all components

instance_destroy(left_wall);
instance_destroy(right_wall);
for (i = 0; i < 3; ++i) instance_destroy(laser[i]);
instance_destroy(laser_anti);