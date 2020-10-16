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
	if ( hitAfter > 0 ) hitAfter--;
	if ( knockback ) sc_mobKnockback();
	sc_obPhysics();
	if ( !isJump )	xSpeed = 0;
	else xSpeed = xSpeed/1.1;
	if ( patrol ) sc_mobPatrol();
	sc_mobAd();
	sc_bandit01Sprite();
	if (ad) sc_bandit01Atk();
}
else {
	image_speed = 0;
}