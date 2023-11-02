// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameRoom(roomIndex){
	room_persistent = true;
	global.roomBuffer = room;
	global.camBufferX = uc_get_x();
	global.camBufferY = uc_get_y();
	
	var _height = 1920*display_get_height()/display_get_width();
	
	buffer_delete(global.screenBuffer);
	var tempSurface = surface_create(1920, _height);
	surface_copy(tempSurface,0,0,application_surface);
	global.screenBuffer = buffer_create(1920 * _height * 4, buffer_grow, 1);
	
	buffer_get_surface(global.screenBuffer, tempSurface, 0);
	surface_free(tempSurface);
	
	buffer_delete(global.mapBuffer);
	global.mapBuffer = buffer_create(480 * 210 * 4, buffer_grow, 1);
	
	if (isMinimap) {
		buffer_get_surface(global.mapBuffer, surfMinimap, 0);
	}
	else {
		global.mapBuffer = -1;
		/*
		tempSurface = surface_create(480, 210);
		surface_set_target(tempSurface);
			draw_clear(c_black);
		surface_reset_target();
		
		buffer_get_surface(global.mapBuffer, tempSurface, 0);
		surface_free(tempSurface);
		*/
	}
	
	
	
	room_goto(roomIndex);
}


function sc_gameControlUI() {
	var _height = 1920*display_get_height()/display_get_width();
	
	if (!surface_exists(surf)) {
		//surf = surface_create(window_get_width(), window_get_height());
		surf = surface_create(1920, _height);
		buffer_set_surface(global.screenBuffer, surf, 0);
	}
	
	if (!surface_exists(mapSurf)) {
		mapSurf = surface_create(320, 140);
		if (global.mapBuffer != -1) {
			buffer_set_surface(global.mapBuffer, mapSurf, 0);
			isMap = true;
		}
		else {
			surface_set_target(mapSurf);
				draw_clear(c_black);
			surface_reset_target();
			isMap = false;
		}
	}
	
	draw_surface(surf,0, (1080-_height)/2);
	
	if (isMap) {
		draw_sprite(sp_minimapBox, 0, global.MapX, global.MapY+(1080-_height)/2);
		draw_surface(mapSurf,global.MapX, global.MapY+(1080-_height)/2);
	}
	//sc_printMoney(1);
	sc_gameGUI((1080-_height)/2);
	draw_sprite(sp_black2, 0, 0, (1080-_height)/2);
	
	

}

function sc_gameControlCreate() {
	instance_create_depth(0, 0, 0, ob_gamepadSlot);
	sc_skillUi();
	sc_itemSprite();
	hpProcess = 0;
	surf	= -1;
	mapSurf	= -1;
	isMap = true;
	uiAlpIndex = 1;
}

function sc_set_abSoulMax() {
	global.abSoulMax = (global.abPointMax * 10);
	if (global.abSoulMax > 200) global.abSoulMax = 200;
}

function sc_abSoulLvUp()
{
	global.abPointMax++;
	global.abPoint++;
	global.abSoul -= global.abSoulMax;
	VSLS_Set("abPointMax", global.abPointMax);
	VSLS_Set("abPoint", global.abPoint);
	VSLS_Set("abSoul", global.abSoul);
	VSLS_File_Save("saveFile");
	sc_set_abSoulMax();
	with (ob_player)
	{
		instance_create_layer(x, y, "effect", ob_plLvUpEf);
	}
}