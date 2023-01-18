// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk142(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk142;
	var atk;
	
	if ( atkProcess > 6 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if ( atkProcess == 17 && keySkDown ) {
		atkProcess = 70;
	}
	
	if ( atkProcess == 18 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*8, sc_pl_kickPene(), sc_pl_kickShock()+100, 0, 
			0, 1, 0, sp_pl_sk142Ef1, dir);
		SE_Play(s_bandit02atk2, global.vol);
		global.mp -= global.skMp[142];
		global.skKul[skState] = global.skKulData[142];
	}
	
	if ( atkProcess == 82 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*6, sc_pl_kickPene(), sc_pl_kickShock()+100, 0, 
			0, 1, 0, sp_pl_sk142Ef2, dir);
		SE_Play(s_bandit02atk2, global.vol);
		global.mp -= global.skMp[142];
		global.skKul[skState] = global.skKulData[142];
	}
	

	if ( (atkProcess > 82) || (atkProcess > 18 && atkProcess < 70) ) {
		sc_pl_atkDnJ();
	}
	
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0 }
	else if ( atkProcess < 12 )	{ image_index = 1;  }
	else if ( atkProcess < 18 )	{ image_index = 2; }
	else if ( atkProcess < 30 )	{ image_index = 3; xSpeed = dir * 20; }
	else if ( atkProcess < 36 )	{ image_index = 4; xSpeed = dir * 15; }
	else if ( atkProcess < 42 )	{ image_index = 5; xSpeed = dir * 10; }
	else if ( atkProcess < 60 )	{ image_index = 5;
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else if ( atkProcess < 62 ) {
		canMove = 0;	atkProcess = -5;
	}
	
	if ( atkProcess < 70 )	{}
	else if ( atkProcess < 76 )	{ image_index = 6; }
	else if ( atkProcess < 82 )	{ image_index = 7; }
	else if ( atkProcess < 88 ) { image_index = 8; xSpeed = dir * 5; }
	else if ( atkProcess < 94 ) { image_index = 9; }
	else if ( atkProcess < 110 ) { image_index = 10; sc_pl_comAfterSk(); sc_pl_skComb();}
	else { canMove = 0;	atkProcess = -5; }
	
	
}