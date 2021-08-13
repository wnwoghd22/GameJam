/// @description health bar

if room == Rm_game {
	draw_sprite_stretched(Spr_health_bar, 0, 10, 10, max((global.health[0] / global.max_health[0]) * 100, 0), 10);
	if global.two_players
		draw_sprite_stretched(Spr_health_2_bar, 0, 10, 22, max((global.health[1] / global.max_health[1]) * 100, 0), 10);
	draw_sprite_stretched(Spr_energy_bar, 0, 10, 22 + global.two_players * 12, (global.energy / global.max_energy) * 100, 10);
}