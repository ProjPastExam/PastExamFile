// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_setMinimap() {
	surfMinimapBg	= -1;
	surfMinimapBgBf	= -1;
	surfMinimapEntities = -1;
	h = room_height / 8;
	w = room_width / 8;
	
	var surfTemp	= surface_create(room_width, room_height);
	var surfTemp2	= surface_create(w, h);
	surface_set_target(surfTemp);
		draw_clear(c_black);
		draw_tilemap(layer_tilemap_get_id("Tiles_1"), 0, 0);
	surface_reset_target();
	surface_set_target(surfTemp2);
		draw_surface_stretched(surfTemp, 0, 0, w, h);
	surface_reset_target();
	surface_free(surfTemp);
	
	surfMinimapBgBf = buffer_create(w * h * 4, buffer_grow, 1);
	buffer_get_surface(surfMinimapBgBf, surfTemp2, 0);
	surface_free(surfTemp2);
}

function sc_refreshMapBG() {
	if (!surface_exists(surfMinimapBg)) {
		//surf = surface_create(window_get_width(), window_get_height());
		surfMinimapBg = surface_create(w, h);
		buffer_set_surface(surfMinimapBgBf, surfMinimapBg, 0);
	}
}


function sc_drawMap(){
	if (!surface_exists(surfMinimapBg)) sc_refreshMapBG();
	var drawSurf = surface_create(400, 200);
	
	var left = uc_get_x() - 960;	
	if (left < 0) left = 0;		if (left + 1920 > room_width) left = room_width - 1920;
	var top = uc_get_y() - 560;
	if (top < 0) top = 0;		if (top + 560 > room_height) top = room_height - 560;
	
	surface_set_target(drawSurf);
		draw_surface_part(surfMinimapBg, left, top, 1920, 1080, 0, 0);
	surface_reset_target();
	
	
	draw_surface(drawSurf, 1420, 30);
	surface_free(drawSurf);
	
	
}