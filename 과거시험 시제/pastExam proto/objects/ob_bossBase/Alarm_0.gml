/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	image_speed = 1;
}
else {
	image_speed = room_speed/60;
}

if ( sc_getRoomValue("pause") == 0 ) {
	if ( state != -1 ) {
		if ( !isJump )	xSpeed = 0;
		if ( hitAfter > 0 ) hitAfter--;
		if ( knockback ) sc_mobKnockback();
		if ( hp <= 0 ) { state = -1; process = 0; }
		
		//이하 몹 개인 코드
		
	}
	else {

	}
	sc_obPhysics();
}
else {
	image_speed = 0;
}
alarm[0] = 1;