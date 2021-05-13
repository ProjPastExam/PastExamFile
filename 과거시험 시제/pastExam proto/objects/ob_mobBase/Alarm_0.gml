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
	if ( state != -1 ) {
		if ( !isJump )	xSpeed = 0;
		if ( hitAfter > 0 ) hitAfter--;
		
		//넉백과 기절
		if ( knockback ) sc_mobKnockback();
		else {
			if ( stun > 0 ) stun--;
		}
		
		if ( patrol ) sc_mobPatrol();
		if ( hp <= 0 ) { state = -1; process = 0; }
		if (state != 5 && state != 6) sc_mobAd();
		//이하 몹 개인 코드
		
	}
	else {
		
	}
	sc_obPhysics();
}
else {
	image_speed = 0;
}