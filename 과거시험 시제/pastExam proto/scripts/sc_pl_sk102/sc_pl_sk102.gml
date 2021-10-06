// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk102(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	if ( atkProcess < 20 ) ySpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk102;
	var atk;
	
	if ( atkProcess > 6 ) {
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

	/*
	if ( atkProcess == 18 ) {
		
	}
	*/
	if ( atkProcess == 1 ) {
		audio_play_sound(s_dash01, 5, false);
	}
	
	if ( atkProcess == 14 ) {
		atk = instance_create_layer(x+ dir * -300, y+20, "effect", ob_atkEf03);
		atk.damage = sc_pl_kickDmg()*8;
		atk.shock = sc_pl_kickShock()+100;
		atk.pene = sc_pl_kickPene()+40;
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf102;
		atk.image_xscale = dir;
		audio_play_sound(s_bandit02atk2, 5, false);
		global.mp -= skMp[102];
		//if (sc_getRoomValue("pause") != NULL) ob_roomControl.pause = 20;
		//global.mp -= 200;
	}
	
	//대쉬 제어
	if ( (atkProcess > 10 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	
	if ( atkProcess < 3 )		{ image_index = 0; nextAtk = 0; xSpeed = dir * 8; }
	else if ( atkProcess < 6 )	{ image_index = 0; xSpeed = dir * 17; }
	else if ( atkProcess < 10 )	{ image_index = 0; xSpeed = dir * 22; }
	else if ( atkProcess < 14 )	{ image_index = 1; xSpeed = dir * 25; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = dir * 22; }
	else if ( atkProcess < 22 )	{ image_index = 2; xSpeed = dir * 17; }
	else if ( atkProcess < 28 )	{ image_index = 3; xSpeed = dir * 8; }
	else if ( atkProcess < 30 )	{ image_index = 3; xSpeed = dir * 4; }
	else if ( atkProcess < 40 ) { image_index = 3; xSpeed = 0; }
	else { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess > 20 )	{
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
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1] && global.sk1 != 102) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2] && global.sk2 != 102 )
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3] && global.sk3 != 102) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
	}
	
}