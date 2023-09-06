// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk188(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk188;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if ( atkProcess == 24 ) {
		SE_Play(s_jpBoss_atk2, global.vol);
		atk = sc_pl_atkEf(sc_pl_fireDmg()*3, sc_pl_firePene(), sc_pl_fireShock(), 0, 
			0, 2, 4, sp_pl_sk188Ef, dir);
		sc_pl_kulNMana(188);
		
		spAtk = 2;
		alarm[6] = 600;
	}

		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	if ( (atkProcess > 36 ) ) {
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 18 )	{ image_index = 2; }
	else if ( atkProcess < 24 )	{ image_index = 3; xSpeed = 15*dir; }
	else if ( atkProcess < 30 )	{ image_index = 4; }
	else if ( atkProcess < 36 )	{ image_index = 5; }
	else if ( atkProcess < 42 )	{ image_index = 6; }
	else if ( atkProcess < 48 )	{ image_index = 7; }
	else if ( atkProcess < 54 )	{ image_index = 8; }
	else { canMove = 0;	atkProcess = -5; }
}