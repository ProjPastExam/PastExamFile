// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk101(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk_gun;
	var atk;
	
	if ( atkProcess > 38 && atkProcess < 58 ) {
		if ( keyAttack ) {
			if ( keyDown ) 													nextAtk = 5;
			else if ( keyTop ) 												nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 1;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}

	
	if ( atkProcess == 28 ) {
		atk = instance_create_layer(x+ dir * 80, y-30, "effect", ob_atkEf06);
		atk.damage = 30;
		atk.shock = 30;
		atk.pene = 0;
		atk.hitAfter = 5;
		atk.sprite_index = sp_pl_atkEf101;
		atk.image_xscale = dir;
		audio_play_sound(s_arrow02, 5, false);
		part_type_scale(global.gunEf, dir, 1);
		part_particles_create( global.hitEf, x, y, global.gunEf, 1 );
		//if (sc_getRoomValue("pause") != NULL) ob_roomControl.pause = 20;
		global.mp -= 200;
	}
	
	//대쉬 제어
	if ( (atkProcess > 20 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 30 ) ) {
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
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 14 )	{ image_index = 1; }
	else if ( atkProcess < 28 )	{ image_index = 2; }
	else if ( atkProcess < 34 )	{ image_index = 3; xSpeed = dir * -12; }
	else if ( atkProcess < 39 )	{ image_index = 4; xSpeed = dir * -8; }
	else if ( atkProcess < 44 )	{ image_index = 5; xSpeed = dir * -4; }
	else if ( atkProcess < 52 )	{
		if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; }
		if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
		if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; }
		if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
		if ( nextAtk == 10 ) {
			dProcess = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
	}
	else { canMove = 0;	atkProcess = -5; }
}