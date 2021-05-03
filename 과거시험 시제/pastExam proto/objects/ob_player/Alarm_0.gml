/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	alarm[0] = 1;
	image_speed = 1;
}
else {
	alarm[0] = 2;
	image_speed = 0.5;
}

if ( sc_getRoomValue("pause") == 0 ) {
	if (itemCheck) { sc_pl_itemCheck(); itemCheck = false; }
	sc_obPhysics();
	sc_pl_keyCheck();
	sc_pl_move();
	sc_pl_camera();
	
	if (global.hp <= 0 && canMove != -2) {
		canMove = -2;
		process = 0;
		if (instance_exists(ob_roomControl)) ob_roomControl.slow = 90;
		alarm[2] = 90;
		uc_set_view_scale(0.6, 0.08);
		hitAfter = 0;
	}
	if (canMove == -2) {
		depth -= 100;
		sprite_index = sp_pl_die;
		process++;
		xSpeed = 0;
		if ( process < 24 ) image_index = 0;
		else if ( process < 27 ) image_index = 1;
		else if ( process < 30 ) image_index = 2;
		else if ( process < 33 ) image_index = 3;
		else image_index = 4;
	}
	if (canMove == -10) { sprite_index = sp_pl_standPeace; }
}
else {
	image_speed = 0;
}