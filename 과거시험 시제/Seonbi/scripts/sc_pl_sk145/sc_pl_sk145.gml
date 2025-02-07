// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk145(){
	sc_pl_skDir();
	sc_pl_skDir(60);
	sc_pl_skDir(120);
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk145;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if ( atkProcess == 12 || atkProcess == 78 || atkProcess == 144 ) {
		SE_Play(s_swing_a1, global.vol);
		//audio_play_sound(s_swing_c1, 5, false);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*6, sc_pl_kickPene(), sc_pl_kickShock()+120, 0, 
			0, 1, 0, sp_pl_sk145Ef1, dir);
		sc_pl_kulNMana(145);
	}
	
	if ( atkProcess == 12 ) { atk.sprite_index = sp_pl_sk145Ef1; }
	if ( atkProcess == 78 ) { atk.sprite_index = sp_pl_sk145Ef2; atk.hitUp = 15;}
	if ( atkProcess == 144 ) { atk.sprite_index = sp_pl_sk145Ef3; uc_shake(12, 0.08); }
	
		
	if ( (atkProcess > 24 ) ) { sc_pl_atkDnJ(); }
	
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = dir * 9; }
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = dir * 12; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = dir * 9; }
	else if ( atkProcess < 24 )	{ image_index = 3; xSpeed = dir * 4; }
	else if ( atkProcess < 36 )	{ image_index = 3; if (sc_pl_skRepeat(145)) atkProcess = 60;}
	else if ( atkProcess < 38 ) { canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 60 )		{ }
	else if ( atkProcess < 66 )	{ image_index = 4; xSpeed = dir * 9; nextAtk = 0; }
	else if ( atkProcess < 72 )	{ image_index = 5; xSpeed = dir * 15; nextAtk = 0; }
	else if ( atkProcess < 78 )	{ image_index = 6; xSpeed = dir * 9; }
	else if ( atkProcess < 82 )	{ image_index = 7; xSpeed = dir * 4; }
	else if ( atkProcess < 86 )	{ image_index = 8; }
	else if ( atkProcess < 90 )	{ image_index = 9; }
	else if ( atkProcess < 102 ) { image_index = 9; if (sc_pl_skRepeat(145)) atkProcess = 120; }
	else if ( atkProcess < 104 ) { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess < 120 )		{ }
	else if ( atkProcess < 126 )	{ image_index = 9; xSpeed = dir * 12; }
	else if ( atkProcess < 132 )	{ image_index = 9; xSpeed = dir * 18; }
	else if ( atkProcess < 138 )	{ image_index = 10; xSpeed = dir * 12; }
	else if ( atkProcess < 144 )	{ image_index = 11; xSpeed = dir * 6; }
	else if ( atkProcess < 150 )	{ image_index = 12; }
	else if ( atkProcess < 156 )	{ image_index = 13; }
	else if ( atkProcess < 168 )	{ image_index = 14; }
	else if ( atkProcess < 170 )	{ image_index = 14; sc_pl_skComb();	sc_pl_comAfterSk(); }
	else						{ canMove = 0;	atkProcess = -5; }
}
