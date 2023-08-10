// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk157(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	canJump = true;
	image_xscale = dir;
	sprite_index = sp_pl_sk157;
	var atk;
	sc_pl_skDir(1);
	mobCol = false;
	
	if ( atkProcess > 100 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}
	
	//대쉬 제어
	if ( (atkProcess > 100 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
	
	if ( atkProcess > 16 && atkProcess < 100 && !keySkDown ) {
		atkProcess = 100;
	}
		
	if ( atkProcess < 12 )
	{
		if (isJump) 
		{
			ySpeed = 30;
		}
		xSpeed = 0;
	}
		
	if ( atkProcess == 4 ) {
		instance_create_layer(x, y, "effect", ob_skEf157);
		sc_pl_kulNMana(157);
		sc_hitAfter(40);
	}
	
	if ( atkProcess == 12 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*4, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			0, 1, 0, sp_pl_sk157Ef4, dir,0);
		SE_Play(s_dokBossAtk2, global.vol);
		uc_shake(8, 0.1);
	}
	
	if ( atkProcess == 40 || atkProcess == 40 ) {
		sc_hitAfter(40);
	}
	
	if (atkProcess == 100)
	{
		with(ob_skEf157) { alarm[2] = 1; }
		sc_hitAfter(50);
	}

	
	if ( atkProcess < 4 )			{ image_index = 0; }
	else if ( atkProcess < 8 )		{ image_index = 1; }
	else if ( atkProcess < 12 )		{ image_index = 2; }
	else if ( atkProcess < 16 )		{ image_index = 3; }
	else if ( atkProcess < 100 )	{ image_index = 4; }
	else if ( atkProcess < 105 )	{ image_index = 5; }
	else if ( atkProcess < 110 )	{ image_index = 6; }
	else if ( atkProcess < 115 )	{ image_index = 7; }
	else if ( atkProcess < 120 )	{ image_index = 8; }
	else if ( atkProcess < 125 )	{ image_index = 9; }
	else if ( atkProcess < 150 )	{ image_index = 10; }
	else							{ canMove = 0;	atkProcess = -5; }


	if ( (atkProcess > 130 ) ) 
	{ 
		sc_pl_atkDnJ(); 
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
}
