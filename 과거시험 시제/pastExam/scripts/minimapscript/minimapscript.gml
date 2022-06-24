// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_setMinimap() {
	surfMinimapBg	= -1;
	surfMinimapEntities = -1;
	mScale = 10;
	w = 500;
	h = 200;
	ww = room_width/mScale;
	wh = room_height/mScale;
}

function sc_initMinimap() {
	
	
	mapIndex = int64(room_width/10000);
	var surfTemp	= -1
	var surfTemp2	= -1;
	surfMinimapBg	= surface_create(ww, wh);
	
	for (var i = 0; i < 2; i++) {
		surfTemp	= surface_create(10000, 4000);
		surface_set_target(surfTemp);
			draw_clear(c_black);
			draw_tilemap(layer_tilemap_get_id("Tiles_1"), i*-10000, 0);
		surface_reset_target();
		
		surfTemp2	= surface_create(10000/mScale, 4000/mScale);
		surface_set_target(surfTemp2);
			draw_surface_stretched(surfTemp, 0, 0, 10000/mScale, 4000/mScale);
		surface_reset_target();
		
		surface_set_target(surfMinimapBg);
			draw_surface(surfTemp2, i*10000/mScale, 0);
		surface_reset_target();
		surface_free(surfTemp);
		surface_free(surfTemp2);
	}
}

function sc_drawMap(){
	var mX = (uc_get_x()) / mScale - w/2;
	if (mX < 0) mX = 0;
	if (mX > ww - w) mX = ww - w;
	
	var mY = (uc_get_y()) / mScale - h/2;
	if (mY < 0) mY = 0;
	if (mY > wh - h) mY = wh - h;
	
	if (!surface_exists(surfMinimapBg))	sc_initMinimap();
	//draw_surface(surfMinimapBg, 1320, 30);
	draw_surface_part(surfMinimapBg, mX, mY, w, h, 1320, 30);
	//draw_surface(surfMinimapBg, 0, 30);
}