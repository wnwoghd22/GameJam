/// @description Init

global.current_space = e_space.neutral;
global.spawn_flag = e_spawn.none;
global.enemy_num = 0;
global.pause = false;
global.two_players = false;
for (var i = 0; i < 2; ++i) {
	global.health[i] = 0;
	global.max_health[i] = 0;
}