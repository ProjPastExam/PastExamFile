/// @description Insert description here
// You can write your code in this editor
touch = true;


if (keyboard_check_pressed(global.btInter)) {
	if (global.sk1 == 0) {
		global.sk1 = skNum;
		instance_destroy();
	}
	else if (global.sk2 == 0) {
		global.sk2 = skNum;
		instance_destroy();
	}
	else if (global.sk3 == 0) {
		global.sk3 = skNum;
		instance_destroy();
	}
	else {
		with (ob_player) {
			alarm[3] = 3;
		}
		
		isDelete = true;
		room_persistent = true;
		global.roomBuffer = room;
		global.camBufferX = uc_get_x();
		global.camBufferY = uc_get_y();
		
		if (!surface_exists(global.screenBuffer))	global.screenBuffer = surface_create(display_get_width(), display_get_height());
		surface_copy(global.screenBuffer,0,0,application_surface);
		//application_surface_draw_enable(false);
		
		room_goto(r_tabDeleteSk);
	}

	
	
	
}
