// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_dokBossAtk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	isDA = true;	isDK = false;	isDF = false;
	
	if (isJump) ySpeed += 0.5;
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	else if ( state == 11 ){
		//if ( nextState == 20 )	sc_jpBossRdy();
		var disIndex1 = 800;
		var disIndex2 = 600;
		if (nextState == 13) { disIndex1 = 600;		disIndex2 = 400; }
		if (nextState == 14) { disIndex1 = 950;		disIndex2 = 600; }
		if (nextState == 15) { disIndex1 = 600;		disIndex2 = 0; }
		sc_mobRun(12, disIndex1, disIndex2, 30, nextState, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_dokBoss_atk1;
		xSpeed = 0;
		isDK = true;
		isCounter = 1;
		
		
		//if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 36+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkTrack);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk1Ef1;
			ob.life = 19;
			ob.ob = id;
		}
		
		if ( process == 96+lvDly ) { 
			SE_Play(s_jpBoss_atk1_2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk1Ef2;
			uc_shake(8, 0.1);
		}
		
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 24 )		{ image_index = 3; }
		else if ( process < 30 )		{ image_index = 4; }
		else if ( process < 36+lvDly )	{ image_index = 5; }
		else if ( process < 54+lvDly )	{ image_index = 6;	xSpeed = 40*dir; }
		else if ( process < 60+lvDly )	{ image_index = 7;	xSpeed = 20*dir; }
		else if ( process < 66+lvDly )	{ image_index = 8;	xSpeed = 15*dir; }
		else if ( process < 72+lvDly )	{ image_index = 9;	xSpeed = 5*dir; }
		else if ( process < 78+lvDly )	{ image_index = 10; }
		else if ( process < 84+lvDly )	{ image_index = 11;	xSpeed = 10*dir; }
		else if ( process < 90+lvDly )	{ image_index = 12;	xSpeed = 15*dir; }
		else if ( process < 96+lvDly )	{ image_index = 13;	xSpeed = 24*dir; }
		else if ( process < 102+lvDly )	{ image_index = 14; }
		else if ( process < 118+lvDly )	{ image_index = 15; }
		else if ( process < 114+lvDly )	{ image_index = 16; }
		else if ( process < 132+lvDly )	{ image_index = 17; }
		else { sc_dokBossNS();	state = 10;	delay = 15;	process = 0; isCounter = 0; }
	}
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_dokBoss_atk2;
		xSpeed = 0;
		isDF = true;
		isCounter = 2;
		
		//if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 48+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk2Ef1;
		}
		
		if ( process == 90+lvDly ) { 
			SE_Play(s_jpBoss_atk1_2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk2Ef2;
		}
		
		
		if ( process < 8 )				{ image_index = 0; }
		else if ( process < 16 )		{ image_index = 1; }
		else if ( process < 24+lvDly )	{ image_index = 2; }
		else if ( process < 40+lvDly )	{ image_index = 2; xSpeed = 15*dir; }
		else if ( process < 48+lvDly )	{ image_index = 3; }
		else if ( process < 54+lvDly )	{ image_index = 4; }
		else if ( process < 60+lvDly )	{ image_index = 5; }
		else if ( process < 66+lvDly )	{ image_index = 6; }
		else if ( process < 72+lvDly )	{ image_index = 7; }
		else if ( process < 78+lvDly )	{ image_index = 8;	xSpeed = 8*dir; }
		else if ( process < 84+lvDly )	{ image_index = 9;	xSpeed = 16*dir; }
		else if ( process < 90+lvDly )	{ image_index = 10; xSpeed = 24*dir; }
		else if ( process < 96+lvDly )	{ image_index = 11; }
		else if ( process < 102+lvDly )	{ image_index = 12; }
		else if ( process < 108+lvDly )	{ image_index = 13; }
		else if ( process < 120+lvDly )	{ image_index = 14; }
		else { sc_dokBossNS();	state = 10;	delay = 20;	process = 0; isCounter = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_dokBoss_atk3;
		xSpeed = 0;
		
		if (process == 1 || process == 101 || process == 161) {
			if ( x > plX ) dir = -1;
			else dir = 1;
			//SE_Play(s_jp_dAtk, global.vol); 
		}
		
		if ( process == 48+lvDly || process == 118+lvDly*2 || process == 178+lvDly*3 ) { 
			SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(plX, y-150, "effect", ob_mobAtkRdy);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk3Ef1;
			ob.obCreate = ob_mobAtk2;
			ob.obSprite = sp_dokBoss_atk3Ef2;
			ob.soundEf	= s_thun;
		}
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 24 )		{ image_index = 3; }
		else if ( process < 30 )		{ image_index = 4; }
		else if ( process < 36 )		{ image_index = 5; }
		else if ( process < 42 )		{ image_index = 6; }
		else if ( process < 48+lvDly )	{ image_index = 7; }
		else if ( process < 54+lvDly )	{ image_index = 8; }
		else if ( process < 60+lvDly )	{ image_index = 9; }
		else if ( process < 66+lvDly )	{ image_index = 10; }
		else if ( process < 72+lvDly )	{ image_index = 11; }
		else if ( process < 75+lvDly )
		{
			if (irandom_range(0, 5) > 4)
			{
				sc_dokBossNS();	state = 10;	delay = 45+lvDly*2;	process = 0; 
			}
			else { 
				process = 100; 
				if (abs(plX-x) < 300) { state = 15;	process = 0; }
			}
		}
		else if ( process < 106+lvDly )		{ image_index = 12; }
		else if ( process < 112+lvDly )		{ image_index = 13; }
		else if ( process < 118+lvDly*2 )	{ image_index = 14; }
		else if ( process < 124+lvDly*2 )	{ image_index = 15; }
		else if ( process < 130+lvDly*2 )	{ image_index = 16; }
		else if ( process < 136+lvDly*2 )	{ image_index = 17; }
		else if ( process < 142+lvDly*2 )	{ image_index = 18; }
		else if ( process < 145+lvDly )
		{
			if (irandom_range(0, 5) > 1)
			{
				sc_dokBossNS();	state = 10;	delay = 45+lvDly*2;	process = 0;
			}
			else { 
				process = 160; 
				if (abs(plX-x) < 300) { state = 15;	process = 0; }
			}
		}
		else if ( process < 166+lvDly*2 )	{ image_index = 12; }
		else if ( process < 172+lvDly*2 )	{ image_index = 13; }
		else if ( process < 178+lvDly*3 )	{ image_index = 14; }
		else if ( process < 184+lvDly*3 )	{ image_index = 15; }
		else if ( process < 190+lvDly*3 )	{ image_index = 16; }
		else if ( process < 196+lvDly*3 )	{ image_index = 17; }
		else if ( process < 210+lvDly*3 )	{ image_index = 18; }
		else { sc_dokBossNS();	state = 10;	delay = 45+lvDly*2;	process = 0; }
	}
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_dokBoss_atk4;
		xSpeed = 0;
		isDK = true;	isDF = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
			//SE_Play(s_jp_dAtk, global.vol); 
		}
		
		if ( process == 80+lvDly) { 
			uc_shake(10, 0.1);
			SE_Play(s_st3_boss3, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_atk4Ef;
		}
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 24 )		{ image_index = 3; }
		else if ( process < 30 )		{ image_index = 4; }
		else if ( process < 36 )		{ image_index = 5; }
		else if ( process < 42 )		{ image_index = 6; }
		else if ( process < 48 )		{ image_index = 7; }
		else if ( process < 51+lvDly/4)	{ image_index = 8; }
		else if ( process < 54+lvDly/2)	{ image_index = 9; }
		else if ( process < 57+lvDly )	{ image_index = 10; }
		else if ( process < 60+lvDly )	{ image_index = 11; }
		else if ( process < 66+lvDly )	{ image_index = 12;	xSpeed = dir*12; }
		else if ( process < 78+lvDly )	{ image_index = 13;	xSpeed = dir*24; }
		else if ( process < 84+lvDly )	{ image_index = 14; }
		else if ( process < 90+lvDly )	{ image_index = 15; }
		else if ( process < 96+lvDly )	{ image_index = 16; }
		else if ( process < 114+lvDly )	{ image_index = 17; }
		else { sc_dokBossNS();	state = 10;	delay = 30+lvDly*2;	process = 0; }
	}

	
	else if ( state == 30 ) {
		process++;
		sprite_index = sp_dokBoss_backstep;
		var bSpd = 15;
		if (nextState == 12)	bSpd = 27;
		
		isDK = true;	isDF = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; xSpeed = dir*bSpd*-1; }
		else if ( process < 30 ) { image_index = 2; xSpeed = dir*bSpd*-1/2; }
		else if ( process < 34 ) { image_index = 3; }
		else if ( process < 38 ) { image_index = 4; }
		else { state = nextState;	process = 0;	delay = 0; }
	}
	
	else if ( state == 31 ) {
		process++;
		sprite_index = sp_dokBoss_counter1;
		
		isDK = true;	isDF = true;
		
		if (process == 72+lvDly) {
			uc_shake(10, 0.1);
			SE_Play(s_st3_boss3, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_counter1Ef;
		}
		
		
		if ( process < 5 ) { image_index = 0; xSpeed = dir*18*-1;}
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 15 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 20 ) { image_index = 3; xSpeed = dir*9*-1;}
		else if ( process < 25 ) { image_index = 4; xSpeed = dir*6*-1;}
		else if ( process < 30 ) { image_index = 5; xSpeed = dir*3*-1;}
		else if ( process < 40+lvDly ) { image_index = 6; }
		else if ( process < 46+lvDly ) { image_index = 7;}
		else if ( process < 52+lvDly ) { image_index = 8; }
		else if ( process < 58+lvDly ) { image_index = 8; xSpeed = dir*12; }
		else if ( process < 72+lvDly ) { image_index = 8; xSpeed = dir*24; }
		else if ( process < 78+lvDly ) { image_index = 9; }
		else if ( process < 84+lvDly ) { image_index = 10; }
		else if ( process < 100+lvDly ) { image_index = 11; }
		else { state = 9;	process = 90;	delay = 0; }
	}
	
	else if ( state == 32 ) {
		process++;
		sprite_index = sp_dokBoss_counter2;
		
		isDK = true;
		
		if (process == 65+lvDly) {
			//SE_Play(s_swing_a2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_dokBoss_counter2Ef;
		}
		
		
		if ( process < 5 ) { image_index = 0; xSpeed = dir*18*-1;}
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*15*-1; }
		else if ( process < 15 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 20 ) { image_index = 3; xSpeed = dir*9*-1;}
		else if ( process < 25 ) { image_index = 4; xSpeed = dir*6*-1;}
		else if ( process < 30 ) { image_index = 5; xSpeed = dir*3*-1;}
		else if ( process < 40+lvDly ) { image_index = 6; }
		else if ( process < 65+lvDly ) { image_index = 7; xSpeed = dir*15}
		else if ( process < 63+lvDly ) { image_index = 8; xSpeed = dir*10}
		else if ( process < 71+lvDly ) { image_index = 9; xSpeed = dir*5}
		else if ( process < 79+lvDly ) { image_index = 10; }
		else if ( process < 87+lvDly ) { image_index = 11; }
		else if ( process < 95+lvDly ) { image_index = 12; }
		else if ( process < 103+lvDly ) { image_index = 13; }
		else if ( process < 140+lvDly ) { image_index = 14; }
		else { state = 9;	process = 30;	delay = 0; }
	}
	
	else if ( state == 50 ) {
		process++;
		sprite_index = sp_jpBoss_jump;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process == 20 ) { 
			ySpeed = -18;
		}
		
		isDK = true;	isDF = true;
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 20 ) { image_index = 2; }
		else if ( process < 25 ) { image_index = 3; }
		else if ( process < 35 ) { image_index = 4; }
		else { state = 13;	process = 0;	delay = 0; }
	}
	
	else if ( state == 5 || state == 6 || state == 7 || state == 8 ) {
		if (isCounter > 0) {
			isStun = false;
			state = isCounter+30;
			isCounter = 0;
			process = 0;
		}
		if (kbIndex == 1) {
			sc_dokBossNS(nextState);
			if (isStun) {
				isStun = false;
				state = 9;
				process = 80;
			}
			kbIndex = 0;
		}
	}
	
	else if ( state == 9 ) {
		sc_dokBossNS(nextState);
	}
}

function sc_dokBossNS(nState = nextState) {
	var rIndex = irandom_range(0, 10);
	if (nState == 12)
	{
		if (rIndex < 1)			nextState = 12;
		else if (rIndex < 5)	nextState = 13;
		else if (rIndex < 8)	nextState = 15;
		else					nextState = 14;
	}
	else if (nState == 13)
	{
		if (rIndex < 4)			nextState = 12;
		else if (rIndex < 5)	nextState = 13;
		else if (rIndex < 7)	nextState = 15;
		else					nextState = 14;
	}
	else 
	{
		if (rIndex < 5)	nextState = 12;
		else			nextState = 13;
	}
}