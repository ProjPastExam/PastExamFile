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
	if (itemCheck) { sc_pl_checkItem(); itemCheck = false; }
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
		
	}
}
else {
	image_speed = 0;
}