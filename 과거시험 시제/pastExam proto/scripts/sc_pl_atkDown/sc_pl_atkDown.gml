// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDown(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkDown;
	if (keyRight)	xSpeed = 9;
	if (keyLeft)	xSpeed = -9;
	
	if ( atkProcess == 23 ) {
		instance_create_layer(x, y, "effect", ob_atkEf02);
		ob_atkEf02.image_angle = 270;
		audio_play_sound(s_arrow02, 5, false);
	}
	
	if ( atkProcess == 1 )		{ ySpeed = -19; jumpLast = 40; }
	if ( atkProcess < 7 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 16 )	{ image_index = 1; }
	else if ( atkProcess < 23 )	{ image_index = 2; }
	else if ( atkProcess < 30 )	{ image_index = 3; }
	else if ( atkProcess < 37 )	{ image_index = 4; }
	else if ( atkProcess < 44 )	{ image_index = 5; }
	else { canMove = 0;	atkProcess = -5; }
}