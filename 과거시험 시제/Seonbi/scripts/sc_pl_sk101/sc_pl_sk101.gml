// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk101(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk101;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}

	
	if ( atkProcess == 8 || atkProcess == 16 ||atkProcess == 24 ||atkProcess == 32 ||
			atkProcess == 40) {
		SE_Play(s_arrow01, global.vol);
		atk = sc_pl_atkEf(sc_pl_atkDmg()*1.5, sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 0, sp_pl_atkEf104, dir);
		sc_pl_kulNMana(101, 5);
	}
	
	if ( atkProcess == 8 || atkProcess == 32 ) 
		{ atk.image_angle = 3; }
	if ( atkProcess == 16 || atkProcess == 40 ) 
		{ atk.y +=+5; }
	if ( atkProcess == 24 ) 
		{ atk.image_angle = -3; atk.y +=+10; }
	
	//대쉬 제어
	//if ( (atkProcess > 10 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	//}
		
	if ( (atkProcess > 10 ) ) { sc_pl_atkDnJ(); }
	
	
	if ( atkProcess < 4 )		{ image_index = 0; }
	else if ( atkProcess < 8 )	{ image_index = 1; }
	else if ( atkProcess < 12 )	{ image_index = 2; }
	else if ( atkProcess < 16 )	{ image_index = 3; }
	else if ( atkProcess < 20 )	{ image_index = 4; }
	else if ( atkProcess < 24 )	{ image_index = 5; }
	else if ( atkProcess < 28 )	{ image_index = 6; }
	else if ( atkProcess < 32 )	{ image_index = 7; }
	else if ( atkProcess < 36 )	{ image_index = 8; }
	else if ( atkProcess < 40 )	{ image_index = 9; }
	else if ( atkProcess < 44 )	{ image_index = 10; }
	else if ( atkProcess < 48 )	{ image_index = 11; }
	else if ( atkProcess < 58 ) {
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else	{ canMove = 0;	atkProcess = -5; }
}
