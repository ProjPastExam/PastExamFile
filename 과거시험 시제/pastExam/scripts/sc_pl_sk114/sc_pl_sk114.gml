// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk114(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk114;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
		sc_pl_skKey();
	}

	
	if ( atkProcess == 25 ) {
		sc_pl_atkEf(sc_pl_atkDmg(), sc_pl_atkPene(), sc_pl_atkShock()/1.5, 0, 
			0, 0, 8, sp_pl_sk114Ef, dir,,x + dir*240,y-190);
		SE_Play(s_pl_sk109, global.vol);
		sc_pl_kulNMana(114);
	}
		
	if ( (atkProcess > 25 ) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 5 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 10 )	{ image_index = 1; }
	else if ( atkProcess < 15 )	{ image_index = 2; }
	else if ( atkProcess < 25 )	{ image_index = 3; }
	else if ( atkProcess < 30 )	{ image_index = 4; }
	else if ( atkProcess < 35 )	{ image_index = 5; }
	else if ( atkProcess < 55 )	{
		sc_pl_skComb();
		sc_pl_comAfterSk();
	}
	else { canMove = 0;	atkProcess = -5; }
}