// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFront(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront1;
	var atk;
	
	if ( atkProcess > 21 && atkProcess < 48 ) {
		if (keyAttack) {
			if ( keyDown )													nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if ( atkProcess == 5 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = sc_pl_kickDmg();
		atk.shock = 20;
		atk.pene = 0;
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 21 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = sc_pl_atkDmg();
		atk.shock = sc_pl_atkShock();
		atk.pene = sc_pl_atkPene();
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf01;
		atk.image_xscale = dir;
		audio_play_sound(s_arrow01, 5, false);
		
		if (isJump && (itemJump != -1)) {
			ySpeed = -7;
			xSpeed = dir * -2;
		}
	}
	
	//대쉬 제어
	if ( (atkProcess > 16 && atkProcess < 48) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 25 && atkProcess < 48) ) {
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
		image_index = 0; nextAtk = 0; xSpeed = 16*dir;
		if (isJump && (itemJump != -1)) {
			ySpeed = -5;
			xSpeed = 20*dir;
		}
	}
	else if ( atkProcess < 11 )	{ image_index = 1; xSpeed = 9*dir; }
	else if ( atkProcess < 17 )	{ image_index = 2; xSpeed = 4*dir; }
	else if ( atkProcess < 21 )	{ image_index = 3; }
	else if ( atkProcess < 27 )	{ image_index = 4; }
	else if ( atkProcess < 31 )	{ image_index = 5; }
	else if ( atkProcess < 41 ) { 
		if (nextAtk == 2)	{ canMove = 2;	atkProcess = 0; }
		if (nextAtk == 4)	{ canMove = 4;	atkProcess = 0; }
		if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		if (nextAtk == 7)	{ canMove = 7;	atkProcess = 0; }
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
}