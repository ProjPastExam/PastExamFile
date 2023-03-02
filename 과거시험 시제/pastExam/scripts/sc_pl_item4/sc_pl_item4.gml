// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_item4(){
	var dmg = sc_pl_kickDmg()*6;
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	if ( atkProcess < 20 ) ySpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_item4;
	
	if ( atkProcess > 6 ) {
		sc_pl_skKey();
		sc_pl_comInter();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	/*
	if ( atkProcess == 18 ) {
		
	}
	*/
	if ( atkProcess == 1 ) {
		//SE_Play(s_dash01, global.vol);
		//audio_play_sound(s_dash01, 5, false);
	}
	
	if ( atkProcess == 14 ) {
		sc_pl_atkEf(dmg, sc_pl_kickPene(), sc_pl_kickShock()+50, 0, 
			0, 1, 0, sp_pl_itemEf4, dir,,,,(global.item4-1) * 25);
		SE_Play(s_bandit02atk2, global.vol);
		global.comCt -= 15;
	}
	
		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	
	if ( atkProcess < 3 )		{ image_index = 0; nextAtk = 0; xSpeed = dir * 8; }
	else if ( atkProcess < 6 )	{ image_index = 0; xSpeed = dir * 13; }
	else if ( atkProcess < 10 )	{ image_index = 0; xSpeed = dir * 18; }
	else if ( atkProcess < 14 )	{ image_index = 1; xSpeed = dir * 23; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = dir * 18; }
	else if ( atkProcess < 22 )	{ image_index = 2; xSpeed = dir * 13; }
	else if ( atkProcess < 28 )	{ image_index = 3; xSpeed = dir * 8; }
	else if ( atkProcess < 32 )	{ image_index = 3; xSpeed = dir * 4; }
	else if ( atkProcess < 50 ) { image_index = 3; xSpeed = 0; }
	else { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess > 20 )	{
		sc_pl_skComb();
		sc_pl_comAfterSk();
	}
	
}