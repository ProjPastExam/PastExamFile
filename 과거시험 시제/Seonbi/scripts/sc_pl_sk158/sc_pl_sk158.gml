// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk158(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump && atkProcess > 10 ) xSpeed = 0;
	//if ( atkProcess < 20 ) ySpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk158;
	var atk;
	
	if ( atkProcess > 6 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if ( atkProcess == 1 ) {
		SE_Play(s_dash01, global.vol);
		if (!isJump) 
		{
			xSpeed = dir*10;
			ySpeed = -18;
		}
	}
	
	if ( atkProcess == 100 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*8, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			24, 1, 0, sp_pl_sk158Ef, dir, 0);
		SE_Play(s_st3_boss3, global.vol);
		sc_pl_kulNMana(158);
		uc_shake(8, 0.1);
	}
	

	if ( (atkProcess > 16 ) ) {
		sc_pl_atkDnJ();
	}
	
	
	if ( atkProcess < 6 )			{ image_index = 0;	nextAtk = 0; }
	else if ( atkProcess < 12 )		{ image_index = 1; }
	else if ( atkProcess < 18 )		{ image_index = 2; }
	else if ( atkProcess < 100 )	{ 
		image_index = 3;	
		ySpeed = 25; 
		if (!isJump) atkProcess = 99;
	}
	else if ( atkProcess < 106 )	{ image_index = 4; }
	else if ( atkProcess < 112 )	{ image_index = 5; }
	else if ( atkProcess < 118 )	{ image_index = 6; }
	else if ( atkProcess < 130 )	{ image_index = 7; }
	else { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess > 100 )	{
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
}