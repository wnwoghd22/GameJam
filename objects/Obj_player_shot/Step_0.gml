/// @description

if inertia == false && !global.pause {
	speed = moveSpd;
	inertia = true;
} else if global.pause && inertia == true {
	speed = 0;	
	inertia = false;
}