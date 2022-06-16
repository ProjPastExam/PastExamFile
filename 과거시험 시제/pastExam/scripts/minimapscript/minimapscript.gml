// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_setMinimap() {
	surfMinimapBg = -1;
	surfMinimapEntities = -1;
	h = 1920 / 8;
	w = 3840 / 8;
	//x = 15;
	//y = 15;
}

function sc_refreshMapBG() {
	surfMinimapBg = surface_create(w, h);
	var surfTemp = surface_create(3840, 1920);
	surface_set_target(surfTemp)
		draw_clear(c_black);
		draw_tilemap(layer_tilemap_get_id("Tiles_1"), -uc_get_x(), 0);
	surface_reset_target();
	surface_set_target(surfMinimapBg);
		draw_surface_stretched(surfTemp, 0, 0, w, h);
	surface_reset_target();
	surface_free(surfTemp);
}


function sc_drawMap(){
	if (!surface_exists(surfMinimapBg)) sc_refreshMapBG();
	draw_surface(surfMinimapBg, 1420, 30);
	
	
}