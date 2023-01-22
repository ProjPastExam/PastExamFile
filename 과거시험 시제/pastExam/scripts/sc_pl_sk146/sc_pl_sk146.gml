// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk146(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk146;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if ( atkProcess == 24 || atkProcess == 84 ) {
		SE_Play(s_swing_a1, global.vol);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*4, sc_pl_kickPene(), sc_pl_kickShock()+60, 0, 
			0, 1, 0, sp_pl_sk133Ef, dir);
		sc_pl_kulNMana(146);
	}
	
	if ( atkProcess == 27 || atkProcess == 87 ) {
		atk = sc_pl_atkEf(sc_pl_kickDmg()*4, sc_pl_kickPene(), sc_pl_kickShock()+120, 0, 
			0, 1, 0, sp_pl_sk146Ef, dir);
	}
	
		
	if ( (atkProcess > 24 ) ) { sc_pl_atkDnJ(); }
	
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 24 )	{ image_index = 2; xSpeed = dir * 21; }
	else if ( atkProcess < 30 )	{ image_index = 3; }
	else if ( atkProcess < 36 )	{ image_index = 4; }
	else if ( atkProcess < 48 )	{ image_index = 5; if (sc_pl_skRepeat(146)) atkProcess = 60;}
	else if ( atkProcess < 50 ) { canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 60 )		{ }
	else if ( atkProcess < 66 )	{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 72 )	{ image_index = 1; nextAtk = 0; }
	else if ( atkProcess < 84 )	{ image_index = 2; xSpeed = dir * 21; }
	else if ( atkProcess < 90 )	{ image_index = 3; }
	else if ( atkProcess < 96 )	{ image_index = 4; }
	else if ( atkProcess < 110 ){ image_index = 5; 
		sc_pl_skComb();
		sc_pl_comAfterSk();
	}
	else	{ canMove = 0;	atkProcess = -5; }
}
