// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk112(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk112;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}

	if ( atkProcess == 8 ) {
		SE_Play(s_arrow02, global.vol);		sc_pl_kulNMana(112);
		sc_pl_atkEf(sc_pl_atkDmg()*2, sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef1, -1);
		sc_pl_atkEf(sc_pl_atkDmg()*2, sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef1, 1);
	}
	if (atkProcess == 56) {
		SE_Play(s_arrow02, global.vol);
		sc_pl_atkEf(sc_pl_atkDmg()*2, sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef1, -1);
		sc_pl_atkEf(sc_pl_atkDmg()*2, sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef1, 1);
	}
	if (atkProcess == 16 || atkProcess == 34) {
		SE_Play(s_arrow01, global.vol);
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef2, 1);
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef3, -1);
	}
	if (atkProcess == 22 || atkProcess == 40) {
		SE_Play(s_arrow01, global.vol);
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef3, 1);
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef2, -1);
	}
	if (atkProcess == 28 || atkProcess == 46) {
		SE_Play(s_arrow01, global.vol);
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef4, 1);
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_sk112Ef4, -1);
	}
	
	//대쉬 제어
	if ( (atkProcess > 10 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 10 ) ) { sc_pl_atkDnJ(); }
	
	
	if ( atkProcess < 4 )		{ image_index = 0; }
	else if ( atkProcess < 8 )	{ image_index = 1; }
	else if ( atkProcess < 12 )	{ image_index = 2; }
	else if ( atkProcess < 16 )	{ image_index = 3; }
	else if ( atkProcess < 20 )	{ image_index = 4; }
	else if ( atkProcess < 24 )	{ image_index = 5; }
	else if ( atkProcess < 28 )	{ image_index = 6; }
	else if ( atkProcess < 32 )	{ image_index = 7; }
	else if ( atkProcess < 36 )	{ image_index = 8; }
	else if ( atkProcess < 40 )	{ image_index = 9; }
	else if ( atkProcess < 44 )	{ image_index = 10; }
	else if ( atkProcess < 48 )	{ image_index = 11; }
	else if ( atkProcess < 52 )	{ image_index = 12; }
	else if ( atkProcess < 56 )	{ image_index = 13; }
	else if ( atkProcess < 60 )	{ image_index = 26; }
	else if ( atkProcess < 64 )	{ image_index = 27; }
	else if ( atkProcess < 80 ) {
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else	{ canMove = 0;	atkProcess = -5; }
}
