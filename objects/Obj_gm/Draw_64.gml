/// @description health bar

if room == Rm_game {
	draw_sprite_stretched(Spr_health_bar, 0, 10, 10, (lives / global.max_life) * 100, 10);
	draw_sprite_stretched(Spr_energy_bar, 0, 10, 22, (global.energy / global.max_energy) * 100, 10);
}