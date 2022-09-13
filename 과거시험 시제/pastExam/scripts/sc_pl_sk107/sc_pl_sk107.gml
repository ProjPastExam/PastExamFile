// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk107(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk107;
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
	if ( atkProcess == 12 || atkProcess == 78 || atkProcess == 144 ) {
		SE_Play(s_swing_a1, global.vol);
		//audio_play_sound(s_swing_c1, 5, false);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*6, sc_pl_kickPene(), sc_pl_kickShock()+120, 0, 
			0, 1, 0, sp_pl_atkEf107_1, dir);
		global.mp -= global.skMp[107];
		global.skKul[skState] = global.skKulData[107];
	}
	
	if ( atkProcess == 12 ) { atk.sprite_index = sp_pl_atkEf107_1; }
	if ( atkProcess == 78 ) { atk.sprite_index = sp_pl_atkEf107_2; atk.hitUp = 15;}
	if ( atkProcess == 144 ) { atk.sprite_index = sp_pl_atkEf107_3; uc_shake(12, 0.08); }
	
	//대쉬 제어
	if ( (atkProcess > 10 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 24 ) ) { sc_pl_atkDnJ(); }
	
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = dir * 9; }
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = dir * 12; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = dir * 9; }
	else if ( atkProcess < 24 )	{ image_index = 3; xSpeed = dir * 4; }
	else if ( atkProcess < 36 )	{ image_index = 3; if (sc_pl_skRepeat(107)) atkProcess = 60;}
	else if ( atkProcess < 38 ) { canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 60 )		{ }
	else if ( atkProcess < 66 )	{ image_index = 4; xSpeed = dir * 9; }
	else if ( atkProcess < 72 )	{ image_index = 5; xSpeed = dir * 15; }
	else if ( atkProcess < 78 )	{ image_index = 6; xSpeed = dir * 9; }
	else if ( atkProcess < 82 )	{ image_index = 7; xSpeed = dir * 4; }
	else if ( atkProcess < 86 )	{ image_index = 8; }
	else if ( atkProcess < 90 )	{ image_index = 9; }
	else if ( atkProcess < 102 ) { image_index = 9; if (sc_pl_skRepeat(107)) atkProcess = 120; }
	else if ( atkProcess < 104 ) { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess < 120 )		{ }
	else if ( atkProcess < 126 )	{ image_index = 9; xSpeed = dir * 12; }
	else if ( atkProcess < 132 )	{ image_index = 9; xSpeed = dir * 18; }
	else if ( atkProcess < 138 )	{ image_index = 10; xSpeed = dir * 12; }
	else if ( atkProcess < 144 )	{ image_index = 11; xSpeed = dir * 6; }
	else if ( atkProcess < 150 )	{ image_index = 12; }
	else if ( atkProcess < 156 )	{ image_index = 13; }
	else if ( atkProcess < 168 )	{ image_index = 14; }
	else if ( atkProcess < 170 ){ image_index = 14; sc_pl_comAfterSk(); }
	else						{ canMove = 0;	atkProcess = -5; global.skKul[skState] = global.skKulData[103]; }
}
