// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkBack(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkBack;
	var atk;
	
	if ( atkProcess > 18 && atkProcess < 38 && keyAttack ) {
		if ( keyDown ) 													nextAtk = 5;
		else if ( keyTop ) 												nextAtk = 6;
		else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
		else															nextAtk = 2;
	}
	
	if ( atkProcess == 20 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = 10;
		atk.shock = 10;
		atk.pene = 0;
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf01;
		atk.image_xscale = dir;
		audio_play_sound(s_arrow01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 18 && atkProcess < 38) ) 
		if ( keyDash ) nextAtk = 10;
		
	if ( (atkProcess > 35 && atkProcess < 44) ) {
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = -16*dir; }
	else if ( atkProcess < 14 )	{ image_index = 1; xSpeed = -12*dir; }
	else if ( atkProcess < 20 )	{ image_index = 2; xSpeed = -8*dir; }
	else if ( atkProcess < 26 )	{ image_index = 3; xSpeed = -4*dir; }
	else if ( atkProcess < 32 )	{ image_index = 4; }
	else if ( atkProcess < 44 ) { 
		if ( nextAtk == 2 ) { atkProcess = 0;	canMove = 2; }
		if ( nextAtk == 5 ) { atkProcess = 0;	canMove = 5; }
		if ( nextAtk == 6 ) { atkProcess = 0;	canMove = 6; }
		if ( nextAtk == 7 ) { atkProcess = 0;	canMove = 7; }
	}
	else { canMove = 0;	atkProcess = -5; }
}