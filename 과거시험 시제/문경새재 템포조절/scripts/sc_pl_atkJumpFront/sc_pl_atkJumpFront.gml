// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkJumpFront(){
	atkProcess++;
	xSpeed = 0;
	if (isJump) xSpeed = dir*2;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront2;
	var atk;
	
	if ( atkProcess == 8 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 2 * sc_pl_kickDmg();
		atk.shock = sc_pl_kickShock();
		atk.pene = sc_pl_kickPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_kickMana();
		audio_play_sound(s_kick01, 5, false);
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
	if ( atkProcess < 3 )	{ image_index = 0; nextAtk = 0; xSpeed = 14*dir; ySpeed = -5; }
	else if ( atkProcess < 8 )	{ image_index = 1; xSpeed = 16*dir; ySpeed = -3; }
	else if ( atkProcess < 13 )	{ image_index = 2; xSpeed = 12*dir; ySpeed = -1; }
	else if ( atkProcess < 19 )	{ image_index = 3; xSpeed = 8*dir; }
	else if ( atkProcess < 24 )	{ image_index = 4; xSpeed = 4*dir; }
	else { 
		canMove = 11; 
		atkProcess = 15; 
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