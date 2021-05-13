// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk2(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	if (isSin != -1) {
		if ( isJump ) sprite_index = sp_pl_jumpSin;
		else sprite_index = sp_pl_atk2sin;
	}
	else {
		if ( isJump ) sprite_index = sp_pl_jumpAtk2;
		else sprite_index = sp_pl_atk2;
	}
	
	if ( atkProcess > 30 && atkProcess < 50 && keyAttack) {
		if ( keyDown )		nextAtk = 5;
		else if ( keyTop ) 	nextAtk = 6;
	}
	
	if ( atkProcess == 6 ) {
		
		if (isJump && (itemJump != -1)) {
			ySpeed = -6;
		}
	}
	
	if ( atkProcess == 26 ) {
		if (isSin != -1) {
			atk = instance_create_layer(x, y, "effect", ob_sinEf01);
			//atk.damage = 10;
			//atk.shock = 10;
			//atk.pene = 0;
			//atk.hitAfter = 15;
			atk.image_xscale = dir;
			atk.dir = dir;
			audio_play_sound(s_arrow02, 5, false);
		}
		else {
			atk = instance_create_layer(x, y, "effect", ob_atkEf01);
			atk.damage = 2.5 * sc_pl_atkDmg();
			atk.shock = 2 * sc_pl_atkShock();
			atk.pene = 0;
			atk.hitAfter = 15;
			atk.sprite_index = sp_pl_atkEf02;
			atk.image_xscale = dir;
			audio_play_sound(s_arrow02, 5, false);
		}
		
		if (isJump && (itemJump != -1)) {
			ySpeed = -15;
			xSpeed = dir * -4;
		}
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
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 14 )	{ image_index = 1; }
	else if ( atkProcess < 26 )	{ image_index = 2; }
	else if ( atkProcess < 32 )	{ image_index = 3; }
	else if ( atkProcess < 38 )	{ image_index = 4; }
	else if ( atkProcess < 44 )	{ image_index = 5; }
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