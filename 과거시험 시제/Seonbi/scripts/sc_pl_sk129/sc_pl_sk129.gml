// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk129(){
	sc_pl_skDir();
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	sprite_index = sp_pl_sk129;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}
	
	if ( atkProcess == 15 ) {

		sc_pl_atkEf(sc_pl_atkDmg()*1.5, sc_pl_atkPene(), sc_pl_atkShock()*0.6, 0, 
			0, 0, 10, sp_pl_sk129Ef, dir);
			
		SE_Play(s_guBoss_atk2_1, global.vol);
		
		sc_pl_kulNMana(129);
	}
	
	if ( atkProcess == 25 ) {
		SE_Play(s_guBoss_atk3_1, global.vol);
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
	if (atkProcess > 30) sc_pl_atkDnJ();

	
	if ( atkProcess < 5 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 10 )	{ image_index = 1; }
	else if ( atkProcess < 15 )	{ image_index = 2; }
	else if ( atkProcess < 20 )	{ image_index = 3; }
	else if ( atkProcess < 25 )	{ image_index = 4; }
	else if ( atkProcess < 30 )	{ image_index = 5; }
	else if ( atkProcess < 45 )	{
		image_index = 6;
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else { canMove = 0;	atkProcess = -5; }
	
}