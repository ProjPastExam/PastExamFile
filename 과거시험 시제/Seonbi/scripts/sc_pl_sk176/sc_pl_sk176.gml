// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk176(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk176;
	var atk;
	
	if ( atkProcess > 80 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	
	if ( atkProcess = 80 ) {

	}
	
	if ( (atkProcess > 90 ) ) {
		sc_pl_atkDnJ();
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 5 )			{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 10 )		{ image_index = 1; }
	else if ( atkProcess < 15 )		{ image_index = 2; }
	else if ( atkProcess < 20 )		{ image_index = 3; }
	else if ( atkProcess < 25 )		{ image_index = 4; }
	else if ( atkProcess < 30 )		{ image_index = 5; }
	else if ( atkProcess < 35 )		{ image_index = 6; }
	else if ( atkProcess < 40 )		{ image_index = 7; }
	else if ( atkProcess < 80 )		
	{ 
		image_index = 8; 
		if (keySkDown)
		{
			if (atkProcess > 75) atkProcess = 75;
			sk176Index = true;
			sk176Index2	= (atkProcess)/4*dir;
			sk176Index3	= (atkProcess)/4*-1;
		}
		else
		{
			sc_pl_atkEf(sc_pl_fireDmg(), sc_pl_firePene(), 100, 0, 
				4, 2, 0, sp_pl_sk176Ef1, dir, 0);
			var atk = sc_pl_atkEf(sc_pl_fireDmg()*5, sc_pl_firePene(), 100, 0, 
				0, 2, 5, sp_pl_sk176Ef2, dir, 0,,y+50,,,ob_skEf176);
			sk176Index2	= (atkProcess)/4*dir;
			sk176Index3	= (atkProcess)/4*-1;
			atk.xSpeed	= sk176Index2;
			atk.ySpeed	= sk176Index3;
				
			uc_shake(8, 0.1);
			SE_Play(s_pl_sk101, global.vol);
			sc_pl_kulNMana(176);
			atkProcess = 80;
		}
	}
	else if ( atkProcess < 85 )		{ image_index = 9;	xSpeed = dir * -16; }
	else if ( atkProcess < 90 )		{ image_index = 10;	xSpeed = dir * -12; }
	else if ( atkProcess < 95 )		{ image_index = 11;	xSpeed = dir * -8; }
	else if ( atkProcess < 100 )	{ image_index = 12;	xSpeed = dir * -4; }
	else if ( atkProcess < 120 )	{ image_index = 13; }
	else { canMove = 0;	atkProcess = -5; }
	
}