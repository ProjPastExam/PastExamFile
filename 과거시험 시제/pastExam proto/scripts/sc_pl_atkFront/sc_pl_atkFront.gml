// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFront(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront1;
	
	if ( atkProcess > 28 && atkProcess < 48 && keyAttack ) {
		if ( keyDown ) 		nextAtk = 5;
		else if ( keyTop ) 	nextAtk = 6;
		else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
		else nextAtk = 2;
	}
	
	if ( atkProcess == 6 ) {
		instance_create_layer(x, y, "effect", ob_atkEf03);
		ob_atkEf03.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 24 ) {
		instance_create_layer(x, y, "effect", ob_atkEf01);
		ob_atkEf01.image_xscale = dir;
		audio_play_sound(s_arrow01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 28 && atkProcess < 48) ) 
		if ( keyDash ) nextAtk = 10;
		
	if ( (atkProcess > 39 && atkProcess < 48) ) {
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = 10*dir; }
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = 7*dir; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = 4*dir; }
	else if ( atkProcess < 24 )	{ image_index = 3; }
	else if ( atkProcess < 36 )	{ image_index = 4; }
	else if ( atkProcess < 42 )	{ image_index = 5; }
	else if ( atkProcess < 48 ) { 
		if (nextAtk == 2)	{ canMove = 2;	atkProcess = 0; }
		if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		if (nextAtk == 7)	{ canMove = 7;	atkProcess = 0; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
}