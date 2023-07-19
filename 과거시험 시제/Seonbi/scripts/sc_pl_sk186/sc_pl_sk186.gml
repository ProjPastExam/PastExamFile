// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk186(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk186;
	var atk;
	
	if ( atkProcess > 40 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	
	if ( atkProcess = 54 ) {
		sc_pl_atkEf(sc_pl_fireDmg()*3, sc_pl_firePene(), 250, 0, 
			4, 2, 0, sp_pl_sk186Ef1, dir, 0, , y);
		sc_pl_atkEf(sc_pl_fireDmg()*3, sc_pl_firePene(), 200, 0, 
			4, 13, 5, sp_pl_sk186Ef2, dir, 0, , y);
		uc_shake(8, 0.1);
		SE_Play(s_gun3, global.vol);
		sc_pl_kulNMana(186);
	}
	
	if ( (atkProcess > 60 ) ) {
		sc_pl_atkDnJ();
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 6 )			{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 12 )		{ image_index = 1; }
	else if ( atkProcess < 18 )		{ image_index = 2; }
	else if ( atkProcess < 24 )		{ image_index = 3; }
	else if ( atkProcess < 30 )		{ image_index = 4; }
	else if ( atkProcess < 36 )		{ image_index = 5; }
	else if ( atkProcess < 42 )		{ image_index = 6; }
	else if ( atkProcess < 48 )		{ image_index = 7; }
	else if ( atkProcess < 54 )		{ image_index = 8; }
	else if ( atkProcess < 60 )		{ image_index = 9;	xSpeed = dir * -16; }
	else if ( atkProcess < 66 )		{ image_index = 10;	xSpeed = dir * -12; }
	else if ( atkProcess < 72 )		{ image_index = 11;	xSpeed = dir * -8; }
	else if ( atkProcess < 78 )		{ image_index = 12;	xSpeed = dir * -4; }
	else if ( atkProcess < 84 )		{ image_index = 13; }
	else if ( atkProcess < 90 )		{ image_index = 14; }
	else if ( atkProcess < 96 )		{ image_index = 15; }
	else if ( atkProcess < 108 )	{ image_index = 16; }
	else { canMove = 0;	atkProcess = -5; }
	
}