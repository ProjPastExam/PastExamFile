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
	if ( instance_exists(ob_BossBandit01) ) {
		x = ob_BossBandit01.x;
		y = ob_BossBandit01.y;
	}
	else if (life > 10) life = 10;
	image_alpha = (life)/20;
	if (life <= 0) instance_destroy();
	life--;
}
else {
	image_speed = 0;
}