// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk128(){
	sc_pl_skDir();
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	sprite_index = sp_pl_sk128;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}
	
	if ( atkProcess == 20 ) {
		with (sc_pl_atkEf(sc_pl_atkDmg()*3, sc_pl_atkPene(), sc_pl_atkShock()*1.2, 0, 
			0, 0, 0, sp_pl_sk128Ef, dir,,,,,,ob_skEf128)) { xSpeed = 12*other.dir;	ySpeed = -16;}
		
		with (sc_pl_atkEf(sc_pl_atkDmg()*3, sc_pl_atkPene(), sc_pl_atkShock()*1.2, 0, 
			0, 0, 0, sp_pl_sk128Ef, dir,,,,,,ob_skEf128)) { xSpeed = 16*other.dir;	ySpeed = -16;}
		
		with (sc_pl_atkEf(sc_pl_atkDmg()*3, sc_pl_atkPene(), sc_pl_atkShock()*1.2, 0, 
			0, 0, 0, sp_pl_sk128Ef, dir,,,,,,ob_skEf128)) { xSpeed = 20*other.dir;	ySpeed = -16;}
			
		SE_Play(s_bandit02atk2, global.vol);
		
		sc_pl_kulNMana(128);
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
	if (atkProcess > 30) sc_pl_atkDnJ();

	
	if ( atkProcess < 5 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 10 )	{ image_index = 1; }
	else if ( atkProcess < 15 )	{ image_index = 2; }
	else if ( atkProcess < 20 )	{ image_index = 3; }
	else if ( atkProcess < 25 )	{ image_index = 4;	xSpeed = dir*2; }
	else if ( atkProcess < 30 )	{ image_index = 5; }
	else if ( atkProcess < 45 )	{
		image_index = 6;
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else { canMove = 0;	atkProcess = -5; }
	
}