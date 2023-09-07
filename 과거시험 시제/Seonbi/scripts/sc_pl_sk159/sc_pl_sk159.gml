// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk159(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump ) xSpeed = 0;
	//if ( atkProcess < 20 ) ySpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk159;
	var atk;
	
	if ( atkProcess > 6 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
	
	if ( atkProcess == 1 ) {
		SE_Play(s_pl_sk159, global.vol);
	}
	
	if ( atkProcess == 29 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*20, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			0, 1, 0, sp_pl_sk159Ef, dir, 0,,,,,,1);
		sc_pl_kulNMana(159);
		uc_shake(8, 0.1);
	}
	
	
	if ( atkProcess < 5 )			{ image_index = 0;	nextAtk = 0; }
	else if ( atkProcess < 10 )		{ image_index = 1; }
	else if ( atkProcess < 15 )		{ image_index = 2; }
	else if ( atkProcess < 20 )		{ image_index = 3; }
	else if ( atkProcess < 25 )		{ image_index = 4; }
	else if ( atkProcess < 30 )		
	{
		image_index = 5;
		sc_pl_comAfterSk();
		sc_pl_skComb();
		sc_pl_atkDnJ();
	}
	else { canMove = 0;	atkProcess = -5; }
	
}