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
		if ( knockback ) sc_mobKnockback();
		else xSpeed = xSpeed/1.1;
		if ( patrol ) sc_mobPatrol();
		if ( hp <= 0 ) { state = -1; process = 0; }
		sc_mobAd();
		sc_bandit01Sprite();
		if (ad) sc_bandit01Atk();
	}
	else {
		sprite_index = sp_bandit01_die;
		if ( image_index == 0 ) xSpeed = -1 * dir * 15;
		if ( image_index == 1 ) xSpeed = -1 * dir * 10;
		if ( image_index == 2 ) xSpeed = -1 * dir * 5;
		if ( image_index > 3 ) { xSpeed = 0; image_speed = 0; }
	}
	sc_obPhysics();

}
else {
	image_speed = 0;
}