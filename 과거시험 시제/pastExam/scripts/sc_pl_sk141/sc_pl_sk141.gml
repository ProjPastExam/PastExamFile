// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk141(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	if ( atkProcess < 20 ) ySpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk141;
	var atk;
	
	if ( atkProcess > 6 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	/*
	if ( atkProcess == 18 ) {
		
	}
	*/
	if ( atkProcess == 1 ) {
		SE_Play(s_dash01, global.vol);
		//audio_play_sound(s_dash01, 5, false);
	}
	
	if ( atkProcess == 14 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*6, sc_pl_kickPene(), sc_pl_kickShock()+100, 0, 
			0, 1, 0, sp_pl_sk131Ef, dir);
		SE_Play(s_bandit02atk2, global.vol);
		sc_pl_kulNMana(141);
	}
	

	if ( (atkProcess > 16 ) ) {
		sc_pl_atkDnJ();
	}
	if ( atkProcess < 22 ) {
		isImort = true;
	}
	
	
	
	if ( atkProcess < 3 )		{ image_index = 0; nextAtk = 0; xSpeed = dir * 8; }
	else if ( atkProcess < 6 )	{ image_index = 0; xSpeed = dir * 15; }
	else if ( atkProcess < 10 )	{ image_index = 0; xSpeed = dir * 18; }
	else if ( atkProcess < 14 )	{ image_index = 1; xSpeed = dir * 22; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = dir * 18; }
	else if ( atkProcess < 22 )	{ image_index = 2; xSpeed = dir * 15; }
	else if ( atkProcess < 28 )	{ image_index = 3; xSpeed = dir * 8; }
	else if ( atkProcess < 32 )	{ image_index = 3; xSpeed = dir * 4; }
	else if ( atkProcess < 50 ) { image_index = 3; xSpeed = 0; }
	else { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess > 20 )	{
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
}