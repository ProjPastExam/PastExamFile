// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkUp(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkUp;
	var atk;
	
	if ( atkProcess > 38 && atkProcess < 58 && keyAttack ) {
		if ( keyDown ) 	nextAtk = 5;
	}
	
	if ( atkProcess == 6 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf04);
		atk.damage = 2 * sc_pl_kickDmg();
		atk.shock = 20;
		atk.pene = 0;
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf04;
		atk.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 32 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = 2.5 * sc_pl_atkDmg();
		atk.shock = sc_pl_atkShock()*2;
		atk.pene = sc_pl_atkPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf02;
		if ( dir == 1 )		atk.image_angle = 35;
		if ( dir == -1 )	atk.image_angle = 145;
		audio_play_sound(s_arrow02, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 25) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 36) ) {
		if ( nextAtk == 9 ) {
			canMove = 0;
			nextAtk = 0;
			if (!isJump) {
				ySpeed = -17.5;
				jumpLast = 30;
				if (keyLeft) xSpeed = -8.5;
				if (keyRight) xSpeed = 8.5;
			}
			audio_play_sound(s_jump, 5, false);
		}
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess < 6 )		{ 
		image_index = 0; nextAtk = 0;
		if (isJump && (itemJump != -1)) {
			ySpeed = -5;
		}
	}
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = -1*dir; }
	else if ( atkProcess < 16 )	{ image_index = 2; xSpeed = -3*dir; }
	else if ( atkProcess < 21 )	{ image_index = 3; xSpeed = -1*dir }
	else if ( atkProcess < 32 )	{ image_index = 4; }
	else if ( atkProcess < 38 )	{ image_index = 5; }
	else if ( atkProcess < 42 )	{ image_index = 6; }
	else if ( atkProcess < 46 )	{ image_index = 7; }
	else if ( atkProcess < 50 ) { 
		if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
}