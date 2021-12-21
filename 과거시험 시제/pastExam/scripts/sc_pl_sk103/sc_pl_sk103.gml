// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk103(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk103;
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
	if ( atkProcess == 8 || atkProcess == 48 || atkProcess == 88 ) {
		SE_Play(s_swing_c1, global.vol);
		//audio_play_sound(s_swing_c1, 5, false);
		atk = instance_create_layer(x + dir*50, y, "effect", ob_atkEf07);
		atk.damage = sc_pl_kickDmg()*8;
		atk.shock = sc_pl_kickShock();
		atk.pene = sc_pl_kickPene();
		atk.hitAfter = 15;
		atk.image_xscale = dir;
		global.mp -= global.skMp[103];
	}
	
	if ( atkProcess == 8 ) { atk.sprite_index = sp_pl_atkEf103_1; }
	if ( atkProcess == 48 ) { atk.sprite_index = sp_pl_atkEf103_2; }
	if ( atkProcess == 88 ) { atk.sprite_index = sp_pl_atkEf103_3; atk.damage = sc_pl_kickDmg()*12; }
	
	//대쉬 제어
	if ( (atkProcess > 10 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 24 ) ) { sc_pl_atkDnJ(); }
	
	
	if ( atkProcess < 4 )		{ image_index = 0; nextAtk = 0; xSpeed = dir * 8; ySpeed = 0; }
	else if ( atkProcess < 8 )	{ image_index = 1; xSpeed = dir * 12; }
	else if ( atkProcess < 12 )	{ image_index = 2; xSpeed = dir * 6; }
	else if ( atkProcess < 16 )	{ image_index = 3; xSpeed = dir * 2; }
	else if ( atkProcess < 30 )	{ image_index = 3; sc_pl_sk103_com();}
	else if ( atkProcess < 39 ) { canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 40 )		{ }
	else if ( atkProcess < 44 )	{ image_index = 4; xSpeed = dir * 6; ySpeed = 0; }
	else if ( atkProcess < 48 )	{ image_index = 5; xSpeed = dir * 12; }
	else if ( atkProcess < 52 )	{ image_index = 6; xSpeed = dir * 6; }
	else if ( atkProcess < 56 )	{ image_index = 7; xSpeed = dir * 2; }
	else if ( atkProcess < 70 ) { image_index = 7; sc_pl_sk103_com();}
	else if ( atkProcess < 79 ) { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess < 80 )		{ }
	else if ( atkProcess < 84 )	{ image_index = 8; xSpeed = dir * 6; ySpeed = 0; }
	else if ( atkProcess < 88 )	{ image_index = 9; xSpeed = dir * 12; }
	else if ( atkProcess < 92 )	{ image_index = 10; xSpeed = dir * 6; }
	else if ( atkProcess < 96 )	{ image_index = 11; xSpeed = dir * 2; }
	else if ( atkProcess < 110 ){ image_index = 11; sc_pl_sk103_com();}
	else						{ canMove = 0;	atkProcess = -5; }
}

function sc_pl_sk103_com() {
	var com = false;
	if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; }
	if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
	if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
	if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; }
	if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
	if ( nextAtk == -1 && global.mp >= global.skMp[global.sk1]) {
		if (global.sk1 == 103)	{com = true;}
		else					{nextAtk = 0; atkProcess = 0; canMove = global.sk1;}
	}
	if ( nextAtk == -2 && global.mp >= global.skMp[global.sk2] ) {
		if (global.sk2 == 103)	{com = true;}
		else					{nextAtk = 0; atkProcess = 0; canMove = global.sk2;}
	}
	if ( nextAtk == -3 && global.mp >= global.skMp[global.sk3])  {
		if (global.sk3 == 103)	{com = true;}
		else					{nextAtk = 0; atkProcess = 0; canMove = global.sk3;}
	}
	
	if (com) {
		if (atkProcess < 40) atkProcess = 40;
		else if (atkProcess < 80) atkProcess = 80;
	}
	nextAtk = 0;
}