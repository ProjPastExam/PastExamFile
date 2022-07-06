// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameRoom(roomIndex){
	room_persistent = true;
	global.roomBuffer = room;
	global.camBufferX = uc_get_x();
	global.camBufferY = uc_get_y();
	
	buffer_delete(global.screenBuffer);
	var tempSurface = surface_create(1920, 1080);
	surface_copy(tempSurface,0,0,application_surface);
	global.screenBuffer = buffer_create(1920 * 1080 * 4, buffer_grow, 1);
	
	buffer_get_surface(global.screenBuffer, tempSurface, 0);
	surface_free(tempSurface);
	
	buffer_delete(global.mapBuffer);
	global.mapBuffer = buffer_create(480 * 210 * 4, buffer_grow, 1);
	
	if (isMinimap) {
		buffer_get_surface(global.mapBuffer, surfMinimap, 0);
	}
	else {
		tempSurface = surface_create(480, 210);
		surface_set_target(tempSurface);
			draw_clear(c_black);
		surface_reset_target();
		
		buffer_get_surface(global.mapBuffer, tempSurface, 0);
		surface_free(tempSurface);
	}
	
	
	
	room_goto(roomIndex);
}