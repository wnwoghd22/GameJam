/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

_action = function (index) {
	global.health[index]= min(global.max_health[index], global.health[index] + 20);
}