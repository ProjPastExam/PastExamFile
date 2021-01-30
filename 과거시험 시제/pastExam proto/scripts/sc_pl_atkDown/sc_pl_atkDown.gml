// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDown(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkDown;
	
	if ( atkProcess > 28 && atkProcess < 48 && keyAttack ) {
		if ( keyTop ) 												nextAtk = 6;
		else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
		else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
		else															nextAtk = 2;
	}
	
	
	if ( atkProcess == 9 ) {
		instance_create_layer(x - dir*50, y, "effect", ob_atkEf03);
		ob_atkEf03.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 36 ) {
		instance_create_layer(x, y, "effect", ob_atkEf01);
		ob_atkEf01.image_xscale = dir;
		audio_play_sound(s_arrow01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 40 && atkProcess < 60) ) 
		if ( keyDash ) nextAtk = 10;
		
	if ( (atkProcess > 51 && atkProcess < 60) ) {
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess == 1 )		{ dir = dir * -1; }
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = -4*dir; }
	else if ( atkProcess < 9 )	{ image_index = 1; xSpeed = -8*dir; }
	else if ( atkProcess < 14 )	{ image_index = 2; xSpeed = -12*dir; }
	else if ( atkProcess < 19 )	{ image_index = 3; xSpeed = -8*dir; }
	else if ( atkProcess < 24 )	{ image_index = 4; xSpeed = -4*dir; }
	else if ( atkProcess < 30 )	{ image_index = 5; }
	else if ( atkProcess < 36 )	{ image_index = 6; }
	else if ( atkProcess < 42 )	{ image_index = 7; }
	else if ( atkProcess < 48 )	{ image_index = 8; }
	else if ( atkProcess < 54 ) { 
		if ( nextAtk == 2 ) { nextAtk = 0; atkProcess = 0; canMove = 2; }
		if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
		if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
}