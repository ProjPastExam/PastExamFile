// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_setMinimap() {
	surfMinimapBg	= -1;
	surfMinimapEntities = -1;
	w = 5000;
	h = 2000;
	mw = w / 8;
	mh = h / 8;
}

function sc_initMinimap() {
	surface_free(surfMinimapBg);
	surfMinimapBg	= surface_create(mw, mh);
	var surfTemp	= surface_create(w, h);
	surface_set_target(surfTemp);
		draw_clear(c_black);
		draw_tilemap(layer_tilemap_get_id("Tiles_1"), -uc_get_x(), 0);
	surface_reset_target();
	surface_set_target(surfMinimapBg);
		draw_surface_stretched(surfTemp, 0, 0, mw, mh);
	surface_reset_target();
	surface_free(surfTemp);
}

function sc_drawMap(){
	sc_initMinimap();
	draw_surface(surfMinimapBg, 1320, 30);
}