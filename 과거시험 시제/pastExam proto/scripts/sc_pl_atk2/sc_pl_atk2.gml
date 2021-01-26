// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk2(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atk;
	
	if ( atkProcess > 30 && atkProcess < 50 && keyAttack) {
		if ( keyDown )		nextAtk = 5;
		else if ( keyTop ) 	nextAtk = 6;
	}
	
	if ( atkProcess == 26 ) {
		instance_create_layer(x, y, "effect", ob_atkEf02);
		ob_atkEf02.image_xscale = dir;
		audio_play_sound(s_arrow02, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 30 && atkProcess < 50) ) 
		if ( keyDash ) nextAtk = 10;
		
	if ( (atkProcess > 41 && atkProcess < 50) ) {
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess < 6 )		{ image_index = 9; nextAtk = 0; }
	else if ( atkProcess < 14 )	{ image_index = 10; }
	else if ( atkProcess < 26 )	{ image_index = 11; }
	else if ( atkProcess < 32 )	{ image_index = 12; }
	else if ( atkProcess < 38 )	{ image_index = 13; }
	else if ( atkProcess < 44 )	{ image_index = 14; }
	else if ( atkProcess < 50 )	{
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