// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFront2(){
	atkProcess++;
	xSpeed = 0;
	if (isJump) xSpeed = dir*2;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront2;
	var atk;
	
	if ( atkProcess == 8 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 2 * sc_pl_kickDmg();
		atk.shock = 30;
		atk.pene = 0;
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
		
		if (isJump && (itemJump != -1)) {
			ySpeed = -10;
			xSpeed = -2*dir;
		}
	}
	/*
	if ( atkProcess == 42 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = 25;
		atk.shock = 20;
		atk.pene = 0;
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf02;
		atk.image_xscale = dir;
		audio_play_sound(s_arrow02, 5, false);
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
	*/
	if ( atkProcess < 3 )	{ image_index = 0; nextAtk = 0; xSpeed = 14*dir; }
	else if ( atkProcess < 8 )	{ image_index = 1; xSpeed = 16*dir; }
	else if ( atkProcess < 13 )	{ image_index = 2; xSpeed = 12*dir; }
	else if ( atkProcess < 19 )	{ image_index = 3; xSpeed = 8*dir; }
	else if ( atkProcess < 24 )	{ image_index = 4; xSpeed = 4*dir; }
	else { 
		canMove = 2; 
		if (isJump) atkProcess = 15; 
		else atkProcess = 6; 
	}
	/*
	else if ( atkProcess < 33 )	{ image_index = 5; }
	else if ( atkProcess < 42 )	{ image_index = 6; }
	else if ( atkProcess < 48 )	{ image_index = 7; }
	else if ( atkProcess < 54 )	{ image_index = 8; }
	else if ( atkProcess < 60 )	{ image_index = 9; }

	else	{ canMove = 0;	atkProcess = -5; }
	*/
}