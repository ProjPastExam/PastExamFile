// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk189(){
	sc_pl_skDir();
	
	atkProcess++;
	xSpeed = 0;
	ySpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk189;
	var atk;
	
	if ( atkProcess > 6 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if ( atkProcess == 8 ) {
		SE_Play(s_dokBossAtk1, global.vol);
		atk = sc_pl_atkEf(sc_pl_fireDmg()*10, sc_pl_firePene(), sc_pl_fireShock(), 0, 
			0, 2, 0, sp_pl_sk189Ef, dir,,,,,,ob_atkEfTrack);
		
		sc_pl_kulNMana(189);
	}

		
	if ( (atkProcess > 12 ) ) {
		sc_pl_atkDnJ();
	}
	
	if ( (atkProcess > 12 ) ) {
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 2 )		{ image_index = 0; }
	else if ( atkProcess < 4 )	{ image_index = 1; }
	else if ( atkProcess < 6 )	{ image_index = 2; }
	else if ( atkProcess < 8 )	{ image_index = 3; }
	else if ( atkProcess < 24 )	{ image_index = 4; xSpeed = 36*dir;	mobCol = false; }
	else { canMove = 0;	atkProcess = -5; }
}