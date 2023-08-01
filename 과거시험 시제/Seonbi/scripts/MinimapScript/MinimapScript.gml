// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_setMinimap() {
	surfMinimapBg	= -1;
	surfMinimapEntities = -1;
	surfMinimapTrap	= -1;
	surfMinimap = -1;
	mScale = 10;
	//480 210
	mw = 320;
	mh = 140;
	mww = room_width/mScale;
	mwh = room_height/mScale;
}

function sc_initMinimap() {
	
	//mapIndex = int64(room_width/10000);
	var surfTemp	= -1
	var surfTemp2	= -1;
	surfMinimapBg	= surface_create(mww, mwh);
	
	for (var i = 0; i < 4; i++) {
		draw_set_alpha(1);
		surfTemp	= surface_create(10000, 4000);
		surface_set_target(surfTemp);
			draw_clear_alpha(c_black, 0.0);
			draw_tilemap(layer_tilemap_get_id("Tiles_1"), i*-10000, 0);
		surface_reset_target();
		
		surfTemp2	= surface_create(10000/mScale, 4000/mScale);
		surface_set_target(surfTemp2);
			draw_surface_stretched_ext(surfTemp, 0, 0, 10000/mScale, 4000/mScale, #000000, 1);
		surface_reset_target();
		
		surface_set_target(surfMinimapBg);
			draw_surface(surfTemp2, i*10000/mScale, 0);
		surface_reset_target();
		surface_free(surfTemp);
		surface_free(surfTemp2);
		draw_set_alpha(uiAlpIndex);
	}
}

function sc_initMinimapTrap() {
	if (!surface_exists(surfMinimapTrap)) surfMinimapTrap = surface_create(mww, mwh);
	surface_set_target(surfMinimapTrap);
		draw_clear_alpha(c_black, 0.0);
		
		with (ob_trap) {
			var mScale = other.mScale;
			var xS = 0.4;
			var yS = 0.15;
			if (isHor)	{ xS = 0.15; yS = 0.4 }
			draw_sprite_ext(sp_mapBox, 0, x/mScale, y/mScale, xS, yS, 0.0, c_red, 1.0);
		}
	surface_reset_target();
}

function sc_initMinimapEntity() {
	if (!surface_exists(surfMinimapEntities)) surfMinimapEntities = surface_create(mww, mwh);
	surface_set_target(surfMinimapEntities);
		draw_clear_alpha(c_black, 0.0);
		with (ob_skEf176) {
			var mScale = other.mScale;
			draw_sprite_ext(sp_pl_sk176Ind, 0, x/mScale, y/mScale, 0.4, 0.4, 0.0, c_red, 1.0);
		}
		
		with (ob_skEf187) {
			var mScale = other.mScale;
			draw_sprite_ext(sp_pl_sk176Ind, 0, x/mScale, y/mScale, 0.4, 0.4, 0.0, c_red, 1.0);
		}
		
		with (ob_mobBase) {
			var mScale = other.mScale;
			if (hp > 0) draw_sprite_ext(sp_mapIconMob, 0, x/mScale, bbox_bottom/mScale, 1, 1, 0.0, c_white, 1.0);
		}
		
		with (ob_boxBase) {
			var mScale = other.mScale;
			draw_sprite_ext(sp_mapIconBox, 0, x/mScale, bbox_bottom/mScale, 1, 1, 0.0, c_white, 1.0);
		}
		
		with (ob_npcBase) {
			var mScale = other.mScale;
			draw_sprite_ext(sp_mapIconNPC, 0, x/mScale, bbox_bottom/mScale, 1, 1, 0.0, c_white, 1.0);
		}
		
		with (ob_player) {
			var mScale = other.mScale;
			draw_sprite_ext(sp_mapIcon, 0, x/mScale, bbox_bottom/mScale, 1, 1, 0.0, c_white, 1.0);
		}
	surface_reset_target();
}

function sc_drawMap(){
	var mX = (uc_get_x()) / mScale - mw/2;
	if (mX < 0) mX = 0;
	if (mX > mww - mw) mX = mww - mw;
	
	var mY = (uc_get_y()) / mScale - mh/2;
	if (mY < 0) mY = 0;
	if (mY > mwh - mh) mY = mwh - mh;
	
	if (!surface_exists(surfMinimapTrap))	sc_initMinimapTrap();
	if (!surface_exists(surfMinimapBg))		sc_initMinimap();
	if (!surface_exists(surfMinimap))		surfMinimap = surface_create(mw, mh);
	sc_initMinimapEntity();
	
	
	surface_set_target(surfMinimap);
		draw_clear_alpha(c_black, 0.0);
		draw_surface_part(surfMinimapTrap, mX, mY, mw, mh, 0, 0);
		draw_surface_part(surfMinimapBg, mX, mY, mw, mh, 0, 0);
		draw_surface_part(surfMinimapEntities, mX, mY, mw, mh, 0, 0);
	surface_reset_target();
	
	draw_sprite(sp_minimapBox, 0, global.MapX, global.MapY);
	draw_surface(surfMinimap, global.MapX, global.MapY)
	//draw_surface_part(surfMinimapTrap, mX, mY, mw, mh, global.MapX, global.MapY);
	//draw_surface_part(surfMinimapBg, mX, mY, mw, mh, global.MapX, global.MapY);
	//draw_surface_part(surfMinimapEntities, mX, mY, mw, mh, global.MapX, global.MapY);
}