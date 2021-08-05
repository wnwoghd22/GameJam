function pattern_bloom() {
	for(i = 0; i < 3; ++i) {
		create_bullet(x, y, x + lengthdir_x(1650, matter_deg + i * 120), y + lengthdir_y(1650, matter_deg + i * 120), e_space.matter);
		create_bullet(x + lengthdir_x(1650, anti_deg + i * 120), y + lengthdir_y(1650, anti_deg + i * 120), x, y, e_space.antimatter);
	}
	
	if !flag {
		if(matter_deg == 355) matter_deg = 0; else matter_deg += 5;
		if(anti_deg == 0) anti_deg = 355; else anti_deg -= 5;
	} else {
		if(matter_deg == 0) matter_deg = 355; else matter_deg -= 5;
		if(anti_deg == 355) anti_deg = 0; else anti_deg += 5;
	}
}