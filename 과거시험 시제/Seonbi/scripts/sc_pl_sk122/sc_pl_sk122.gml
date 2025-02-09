// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk122(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	sprite_index = sp_pl_sk122;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}
	
	if ( atkProcess == 30 ) 
	{
		sc_pl_atkEf(sc_pl_atkDmg()*1, sc_pl_atkPene(), sc_pl_atkShock()*1.2, 0, 
			0, 0, 0, sp_pl_sk122Ef1, dir);
		sc_pl_atkEf(sc_pl_atkDmg()*1, sc_pl_atkPene(), sc_pl_atkShock()*1.2, 0, 
			0, 0, 5, sp_pl_sk122Ef2, dir);
		SE_Play(s_pl_sk100, global.vol);
		sc_pl_kulNMana(121);
		with (ob_roomControl) { pause = 20; }
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
	if (atkProcess > 40)
	{
		sc_pl_atkDnJ();
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}

	
	if ( atkProcess < 6 )		{ image_index = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 18 )	{ image_index = 2; }
	else if ( atkProcess < 24 )	{ image_index = 3; }
	else if ( atkProcess < 30 )	{ image_index = 4; }
	else if ( atkProcess < 36 )	{ image_index = 5;	xSpeed = dir*-4; }
	else if ( atkProcess < 42 )	{ image_index = 6;	xSpeed = dir*-2; }
	else if ( atkProcess < 60 )	{ image_index = 7; }
	else { canMove = 0;	atkProcess = -5; }
	
}