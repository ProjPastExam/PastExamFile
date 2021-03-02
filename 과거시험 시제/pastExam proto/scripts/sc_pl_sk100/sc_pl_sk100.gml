// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk100(){
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk_baby;
	
	if ( atkProcess > 30 && atkProcess < 50 && keyAttack) {
		if ( keyDown )		nextAtk = 5;
		else if ( keyTop ) 	nextAtk = 6;
	}
	
	if ( atkProcess == 40 ) {
		instance_create_layer(x, y, "effect", ob_atkEf02);
		ob_atkEf02.image_xscale = dir;
		audio_play_sound(s_arrow02, 5, false);
		if (sc_getRoomValue("pause") != NULL) ob_roomControl.pause = 20;
		global.mp -= 200;
	}
	
	//대쉬 제어
	if ( (atkProcess > 44 && atkProcess < 64) ) 
		if ( keyDash ) nextAtk = 10;
		
	if ( (atkProcess > 53 && atkProcess < 64) ) {
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 14 )	{ image_index = 1; }
	else if ( atkProcess < 40 )	{ image_index = 2; }
	else if ( atkProcess < 46 )	{ image_index = 3; }
	else if ( atkProcess < 52 )	{ image_index = 4; }
	else if ( atkProcess < 58 )	{ image_index = 5; }
	else if ( atkProcess < 64 )	{
		if ( nextAtk == 5 )	{ canMove = 5;	atkProcess = 0; }
		if ( nextAtk == 6 )	{ canMove = 6;	atkProcess = 0; }
		if ( nextAtk == 10 ) {
			dProcess = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	else { canMove = 0;	atkProcess = -5; }
}