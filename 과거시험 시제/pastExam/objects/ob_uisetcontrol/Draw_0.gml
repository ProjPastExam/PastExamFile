/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(mapSurf)) {
	mapSurf = surface_create(480, 210);
	if (global.mapBuffer != -1) {
		buffer_set_surface(global.mapBuffer, mapSurf, 0);
	}
	else {
		surface_set_target(mapSurf);
			draw_clear(c_black);
		surface_reset_target();
	}
}
	
sc_gameCombUi();

draw_sprite(sp_minimapBox, 0, global.MapX, global.MapY);
draw_surface(mapSurf,global.MapX, global.MapY);

sc_gameGUI();
sc_gameHpUI();
sc_printMoney(1);