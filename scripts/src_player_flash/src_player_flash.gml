// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_flash() {
	if get_damage {
		if safe_term > 0 {
			if safe_term % 5 == 0
				image_alpha = image_alpha == 0.3 ? 0.7 : 0.3;
			--safe_term;
		} else if safe_term == 0 {
			image_alpha = 1;
			safe_term = 30;
			get_damage = false;
		}
	}
}