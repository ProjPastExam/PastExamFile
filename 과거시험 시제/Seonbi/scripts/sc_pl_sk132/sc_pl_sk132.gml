// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk132(){
	sc_pl_skDir();
	sc_pl_skDir(40);
	sc_pl_skDir(80);
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk132;
	var atk;
	
	if ( atkProcess > 6 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}

	if ( atkProcess == 8 || atkProcess == 48 || atkProcess == 88 ) {
		SE_Play(s_swing_c1, global.vol);
		//audio_play_sound(s_swing_c1, 5, false);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*2, sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana(), 
			0, 10, 0, sp_pl_sk132Ef1, dir);
		sc_pl_kulNMana(132);
	}
	
	if ( atkProcess == 8 ) { atk.sprite_index = sp_pl_sk132Ef1; }
	if ( atkProcess == 48 ) { atk.sprite_index = sp_pl_sk132Ef2; }
	if ( atkProcess == 88 ) { atk.sprite_index = sp_pl_sk132Ef3; }
	
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
	else if ( atkProcess < 30 )	{ image_index = 3; if (sc_pl_skRepeat(132)) atkProcess = 40;}
	else if ( atkProcess < 39 ) { canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 40 )		{ }
	else if ( atkProcess < 44 )	{ image_index = 4; xSpeed = dir * 6; ySpeed = 0; }
	else if ( atkProcess < 48 )	{ image_index = 5; xSpeed = dir * 12; }
	else if ( atkProcess < 52 )	{ image_index = 6; xSpeed = dir * 6; }
	else if ( atkProcess < 56 )	{ image_index = 7; xSpeed = dir * 2; }
	else if ( atkProcess < 70 ) { image_index = 7; if (sc_pl_skRepeat(132)) atkProcess = 80; }
	else if ( atkProcess < 79 ) { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess < 80 )		{ }
	else if ( atkProcess < 84 )	{ image_index = 8; xSpeed = dir * 6; ySpeed = 0; }
	else if ( atkProcess < 88 )	{ image_index = 9; xSpeed = dir * 12; }
	else if ( atkProcess < 92 )	{ image_index = 10; xSpeed = dir * 6; }
	else if ( atkProcess < 96 )	{ image_index = 11; xSpeed = dir * 2; }
	else if ( atkProcess < 110 ){ image_index = 11; sc_pl_comAfterSk(); }
	else						{ canMove = 0;	atkProcess = -5; }
}

/*
function sc_pl_sk103_com() {
	var com = false;
	if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; global.skKul[skState] = global.skKulData[103]; }
	else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; global.skKul[skState] = global.skKulData[103];}
	else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; global.skKul[skState] = global.skKulData[103];}
	else if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; global.skKul[skState] = global.skKulData[103]; }
	else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; global.skKul[skState] = global.skKulData[103]; }
	if ( nextAtk == -1 && global.mp >= global.skMp[global.sk1]) {
		if (global.sk1 == 103)			{com = true;}
		else if (global.skKul[0] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk1; skState = 0;}
	}
	if ( nextAtk == -2 && global.mp >= global.skMp[global.sk2] ) {
		if (global.sk2 == 103)			{com = true;}
		else if	(global.skKul[1] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk2; skState = 1;}
	}
	if ( nextAtk == -3 && global.mp >= global.skMp[global.sk3])  {
		if								(global.sk3 == 103)	{com = true;}
		else if	(global.skKul[1] == 0)	{nextAtk = 0; atkProcess = 0; canMove = global.sk3; skState = 2;}
	}
	
	if (com) {
		if (atkProcess < 40) atkProcess = 40;
		else if (atkProcess < 80) atkProcess = 80;
	}
	nextAtk = 0;
}
*/