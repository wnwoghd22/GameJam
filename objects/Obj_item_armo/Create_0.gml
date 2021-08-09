/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

_action = function (index) {
	global.player[index].attack_type = min(global.player[index].attack_type + 1, 4);
}