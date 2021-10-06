// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk3(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk_baby;
	var atk;
	isAtk3 = 0;
	
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

	
	if ( atkProcess == 42 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = 4 * sc_pl_atkDmg();
		atk.shock = sc_pl_atkShock()+75;
		atk.pene = 60 + sc_pl_atkPene();
		atk.mpUp = sc_pl_atkMana();
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf100;
		atk.image_xscale = dir;
		uc_shake(4, 0.1);
		audio_play_sound(s_pl_sk100, 5, false);
		//if (instance_exists(ob_roomControl)) ob_roomControl.pause = 20;
		//global.mp -= 200;
	}
	
	//대쉬 제어
	if ( (atkProcess > 38 && atkProcess < 64) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 43 && atkProcess < 64) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 14 )	{ image_index = 1; }
	else if ( atkProcess < 42 )	{ image_index = 2; }
	else if ( atkProcess < 48 )	{ image_index = 3; xSpeed = dir * -8; }
	else if ( atkProcess < 53 )	{ image_index = 4; xSpeed = dir * -5; }
	else if ( atkProcess < 68 )	{ image_index = 5; xSpeed = dir * -2; }
	else if ( atkProcess < 76 )	{
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