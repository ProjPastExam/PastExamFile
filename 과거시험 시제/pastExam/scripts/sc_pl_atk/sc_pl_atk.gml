// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	if (!isJump) sprite_index = sp_pl_atk;
	else sprite_index = sp_pl_jumpAtk;
	var atk;
	
	if ( atkProcess > 0 && atkProcess < 24 && keyAttack ) nextAtk = 1;
	if ( atkProcess > 28 ) {
		if ( keyAttack ) {
			if ( keyDown ) 													nextAtk = 5;
			else if ( keyTop ) 												nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	if ( atkProcess == 12 || atkProcess == 30 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf01);
		atk.damage = sc_pl_atkDmg();
		atk.shock = sc_pl_atkShock();
		atk.pene = sc_pl_atkPene();
		atk.hitAfter = 10;
		atk.sprite_index = sp_pl_atkEf01;
		atk.image_xscale = dir;
		atk.mpUp = sc_pl_atkMana();
		SE_Play(s_arrow01, global.vol);
		//audio_play_sound(s_arrow01, 5, false);
	}
	/*
	if ( atkProcess == 20 && isAtk3 == 20 ) {
		canMove = 12;
		isAtk3 = 0;
		atkProcess = 0;
	}
	*/
	//대쉬 제어
	//if ( (atkProcess > 16 && atkProcess < 36) || (atkProcess > 0 && atkProcess < 16) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	//}
		
	if ( (atkProcess > 28) || (atkProcess > 10 && atkProcess < 20) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 17 )	{ image_index = 2; }
	else if ( atkProcess < 22 )	{
		if ( nextAtk != 1 ) { image_index = 3; }
		else				{ image_index = 4; }
	}
	else if ( atkProcess < 26 )	{ 
		if ( image_index != 3 )	{ image_index = 5; nextAtk = 0; }
		}
	else if ( atkProcess < 30 )	{ 
		if ( image_index == 3 ) { atkProcess = -5; canMove = 0; }
		else					{ image_index = 6; }
	}
		
	else if ( atkProcess < 38 )	{ image_index = 7; }
	else if ( atkProcess < 46 ) { 
		image_index = 8;
		if ( nextAtk == 2 ) { nextAtk = 0; atkProcess = 0; canMove = 2; }
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
	else { atkProcess = -15;	canMove = 0; }
}