// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_adCs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1 || state == 9 || state == 10) x = x + 3;
	
	if (state == 4)
	{
		atkProcess++;
		sprite_index = sp_pl_sk101;
		var atk;
		if ( atkProcess == 8 || atkProcess == 16 ||atkProcess == 24 ||atkProcess == 32 ||
				atkProcess == 40) {
			SE_Play(s_arrow01, global.vol);
			atk = sc_pl_atkEf(10, 0, sc_pl_atkShock(), 0, 
				0, 0, 0, sp_pl_atkEf104, 1);
		}
		
		if ( atkProcess == 8 || atkProcess == 32 ) 
			{ atk.image_angle = 3; }
		if ( atkProcess == 16 || atkProcess == 40 ) 
			{ atk.y +=+5; }
		if ( atkProcess == 24 ) 
			{ atk.image_angle = -3; atk.y +=+10; }
		
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
	}
	else if (state == 5)
	{
		atkProcess++;
		sprite_index = sp_pl_sk131;
		
		if ( atkProcess == 1 ) {
			SE_Play(s_dash01, global.vol);
		}
		
		if ( atkProcess == 14 ) {
			sc_pl_atkEf(40, sc_pl_kickPene(), sc_pl_kickShock()+100, 0, 
				0, 1, 0, sp_pl_sk131Ef, 1);
			SE_Play(s_bandit02atk2, global.vol);
		}
		
		
		if ( atkProcess < 3 )		{ image_index = 0; x+= 8; }
		else if ( atkProcess < 6 )	{ image_index = 0; x+= 17; }
		else if ( atkProcess < 10 )	{ image_index = 0; x+= 22; }
		else if ( atkProcess < 14 )	{ image_index = 1; x+= 25; }
		else if ( atkProcess < 18 )	{ image_index = 2; x+= 22; }
		else if ( atkProcess < 22 )	{ image_index = 2; x+= 17; }
		else if ( atkProcess < 28 )	{ image_index = 3; x+= 8; }
		else if ( atkProcess < 32 )	{ image_index = 3; x+= 4; }
		else if ( atkProcess < 50 ) { image_index = 3; x+= 0; }
	}
	else if (state == 6)
	{
		atkProcess++;
		sprite_index = sp_pl_sk161;
		
		if ( atkProcess == 24 ) {
			sc_pl_atkEf(sc_pl_fireDmg()*3, sc_pl_firePene(), sc_pl_fireShock(), 0, 
				4, 2, 10, sp_pl_sk161Ef, 1, 0,,y-20);
			uc_shake(8, 0.1);
			SE_Play(s_gun2, global.vol);
			part_type_scale(global.gunEf, 1, 1);
			part_particles_create( global.hitEf, x, y, global.gunEf, 1 );
		}
		
		if ( atkProcess < 8 )		{ image_index = 0; }
		else if ( atkProcess < 24 )	{ image_index = 1; }
		else if ( atkProcess < 27 )	{ image_index = 2; x+= -8; }
		else if ( atkProcess < 32 )	{ image_index = 3; x+= -6; }
		else if ( atkProcess < 37 )	{ image_index = 4; x+= -4;  }
		else if ( atkProcess < 42 )	{ image_index = 5; }
	}
	
	var ii = 720;
	var iy = 640

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 180;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 60);
			alarm[1] = 180;
			isTalk = 5;
			break;
			
		case 2:
			BGS_Set(0, 0);
			//BGM_Play(s_mB01_1, global.volBgm, 0);
			SE_Play(s_talk, global.vol);
			sprite_index = sp_pl_standPeace;
			sc_csBase(0, 1, sp_bandit_face, -50, 540);
			uc_shake(10, 0.05);
			break;
			
		case 3:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			atkProcess = 0;
			isTalk = 4;
			alarm[1] = 48;
			break;
			
		case 5:
			atkProcess = 0;
			isTalk = 4;
			alarm[1] = 25;
			break;
		
		case 6:
			atkProcess = 0;
			isTalk = 4;
			alarm[1] = 42;
			break;
			
		case 7:
			sprite_index = sp_pl_standPeace;
			atkProcess = 0;
			isTalk = 4;
			alarm[1] = 40;
			break;
			
		case 8:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 9:
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			isTalk = 4;
			alarm[1] = 210;
			break;

		case 10:
			BGS_Set(0, 120);
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}