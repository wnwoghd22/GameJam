enum e_spawn {
	none = 0,
	enemy = 1,
	obstacle = 2,
	boss = 3,
}

function spawn(){
	global.spawn_flag = choose(1,2,3);
	
	
}