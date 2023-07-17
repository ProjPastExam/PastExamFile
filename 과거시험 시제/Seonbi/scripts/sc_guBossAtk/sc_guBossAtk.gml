// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_guBossAtk(){
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
		var disIndex1 = 600;
		var disIndex2 = 300;
		if (nextState == 13) { disIndex1 = 600;		disIndex2 = 300; }
		if (nextState == 14) { disIndex1 = 400;	disIndex2 = 400; }
		if (nextState == 15) { disIndex1 = 800;		disIndex2 = 0; }
		sc_mobRun(12, disIndex1, disIndex2, 30, nextState, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		
		process++;
		sprite_index = sp_gu_atk1;
		xSpeed = 0;
		
		//if ( process == 1 ) { SE_Play(s_guBoss_atk1_1, global.vol); }
		if ( process == 36+lvDly ) { 
			SE_Play(s_guBoss_atk3_2, global.vol);
			
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_gu_atk1Ef;
		}
		
		
		if ( process < 6+lvDly*0.2 )		{ image_index = 0; }
		else if ( process < 12+lvDly*0.4 )	{ image_index = 1; }
		else if ( process < 18+lvDly*0.6 )	{ image_index = 2; }
		else if ( process < 24+lvDly*0.8 )	{ image_index = 3; }
		else if ( process < 30+lvDly )		{ image_index = 4; }
		else if ( process < 36+lvDly )		{ image_index = 5; }
		else if ( process < 42+lvDly )		{ image_index = 6; }
		else if ( process < 48+lvDly )		{ image_index = 7; }
		else if ( process < 54+lvDly )		{ image_index = 8; }
		else if ( process < 60+lvDly )		{ image_index = 9; }
		else if ( process < 72+lvDly )		{ image_index = 10 }
		else { state = 10;	delay = 20;	process = 0; sc_guBossNS(); }
	}
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_gu_atk2;
		xSpeed = 0;
		//isDF = true;
		//isCounter = 1;
		
		if ( process == 1 ) { SE_Play(s_guBoss_atk2_1, global.vol); }
		if ( process == 40+lvDly ) { 
			SE_Play(s_guBoss_atk2_2, global.vol);
			//audio_play_sound(s_bandit01atk2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_gu_atk2Ef;
		}
		
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 30+lvDly )	{ image_index = 3; }
		else if ( process < 36+lvDly )	{ image_index = 4; }
		else if ( process < 42+lvDly )	{ image_index = 5; }
		else if ( process < 48+lvDly )	{ image_index = 6; }
		else if ( process < 54+lvDly )	{ image_index = 7; }
		else if ( process < 60+lvDly )	{ image_index = 8; }
		else if ( process < 66+lvDly )	{ image_index = 9; }
		else if ( process < 72+lvDly )	{ image_index = 10; }
		else if ( process < 78+lvDly )	{ image_index = 11; }
		else if ( process < 84+lvDly )	{ image_index = 12; }
		else if ( process < 90+lvDly )	{ image_index = 13; }
		else if ( process < 96+lvDly )	{ image_index = 14; }
		else if ( process < 110+lvDly )	{ image_index = 15; }
		else { state = 10;	delay = 20;	process = 0; sc_guBossNS(); }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_gu_atk3;
		xSpeed = 0;
		isDF = true;
		isCounter = 1;
		
		if ( process == 1 ) { SE_Play(s_guBoss_atk3_1, global.vol); }
		
		if ( process == 36) { 
			SE_Play(s_guBoss_atk3_2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_gu_atk3Ef;
		}
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 12 )		{ image_index = 1; }
		else if ( process < 18 )		{ image_index = 2; }
		else if ( process < 24 )		{ image_index = 3;	xSpeed = 6*dir; }
		else if ( process < 30 )		{ image_index = 4;	xSpeed = 12*dir; }
		else if ( process < 36 )		{ image_index = 5;	xSpeed = 18*dir; }
		else if ( process < 42 )		{ image_index = 6; }
		else if ( process < 48 )		{ image_index = 7; }
		else if ( process < 54 )		{ image_index = 8; }
		else if ( process < 60 )		{ image_index = 9; }
		else if ( process < 66 )		{ image_index = 10; }
		else if ( process < 72 )		{ image_index = 11; }
		else { sc_guBossNS();	state = 10;	delay = 50;	process = 0;	isCounter = 0; }
	}
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_gu_dash;
		var bSpd = 25;
		//if (nextState == 12)	bSpd = 27;
		if ( process == 1 ) { SE_Play(s_guBoss_atk4, global.vol); }
		
		isDK = true;
		
		if (process == 1) {
			if ( abs(x - plX) < 400 )	 { state = 16;	process = 0;	delay = 0; }
		}
		
		if ( process < 4 ) { image_index = 0;		xSpeed = dir*bSpd/3; }
		else if ( process < 8 ) { image_index = 1;	xSpeed = dir*bSpd/2; }
		else if ( process < 12 ) { image_index = 2; xSpeed = dir*bSpd; }
		else if ( process < 16 ) { image_index = 3; xSpeed = dir*bSpd; }
		else if ( process < 28 ) { image_index = 4; xSpeed = dir*bSpd; }
		else if ( process < 32 ) { image_index = 5; xSpeed = dir*bSpd/2; }
		else if ( process < 36 ) { image_index = 6; xSpeed = dir*bSpd/3; }
		else { state = 16;	process = 20+lvDly;	delay = 0; }
	}
	
	else if ( state == 16 ) {
		process++;
		sprite_index = sp_gu_atk4;
		xSpeed = 0;
		isDK = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
			//SE_Play(s_guBoss_atk1_1, global.vol);
		}
		
		if ( process == 67+lvDly ) { 
			SE_Play(s_guBoss_atk1_2, global.vol);
			var ob = instance_create_layer(x, y-20, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_gu_atk4Ef;
		}
		
		if ( process < 5+lvDly*0.3 )		{ image_index = 0; }
		else if ( process < 10+lvDly*0.6 )	{ image_index = 1; }
		else if ( process < 20+lvDly )		{ image_index = 2; }
		else if ( process < 25+lvDly )		{ image_index = 3; }
		else if ( process < 30+lvDly )		{ image_index = 4;	ySpeed = -20; }
		else if ( process < 36+lvDly )		{ image_index = 5;	ySpeed = -10; }
		else if ( process < 42+lvDly )		{ image_index = 6;	ySpeed = -5; }
		else if ( process < 48+lvDly )		{ image_index = 7;	ySpeed = 0; }
		else if ( process < 54+lvDly )		{ image_index = 8;	ySpeed = 0; }
		else if ( process < 60+lvDly )		{ image_index = 9;	ySpeed = 0; }
		else if ( process < 66+lvDly )		{ image_index = 10; ySpeed = 25; }
		else if ( process < 72+lvDly )		{ image_index = 11; }
		else if ( process < 78+lvDly )		{ image_index = 12; }
		else if ( process < 84+lvDly )		{ image_index = 13; }
		else if ( process < 90+lvDly )		{ image_index = 14; }
		else { sc_guBossNS();	state = 10;	delay = 20;	process = 0; }
	}
	
	else if ( state == 20 ) {
		process++;
		sprite_index = sp_gu_spawn;
		xSpeed = 0;
		isDK = true;	isDF = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
			switch (spawnIndex)
			{
			case 0:	SE_Play(s_guSpawn1, global.vol); 	break;
			case 1:	SE_Play(s_guSpawn2, global.vol); 	break;
			case 2:	SE_Play(s_guSpawn3, global.vol); 	break;
			}
			
		}
		
		if ( process == 80+lvDly ) { 
			with (instance_create_layer(x, y, "effect", ob_guSpawn))
			{
				image_xscale = other.dir
				switch (other.spawnIndex)
				{
				case 0:	obIndex = ob_guSpawn1;	sprite_index = sp_guSpawn1_spawn;	break;
				case 1:	obIndex = ob_guSpawn2;	sprite_index = sp_guSpawn2_spawn;	break;
				case 2:	obIndex = ob_guSpawn3;	sprite_index = sp_guSpawn3_spawn;	break;
				}
			}
			spawnIndex += 3;
		}
		
		if ( process < 5+lvDly*0.3 )		{ image_index = 0; }
		else if ( process < 10+lvDly*0.6 )	{ image_index = 1; }
		else if ( process < 20+lvDly )		{ image_index = 2; }
		else if ( process < 25+lvDly )		{ image_index = 3; }
		else if ( process < 30+lvDly )		{ image_index = 4;	ySpeed = -20; }
		else if ( process < 36+lvDly )		{ image_index = 5;	ySpeed = -10; }
		else if ( process < 42+lvDly )		{ image_index = 6;	ySpeed = -5; }
		else if ( process < 48+lvDly )		{ image_index = 7;	ySpeed = 0; }
		else if ( process < 54+lvDly )		{ image_index = 8;	ySpeed = 0; }
		else if ( process < 60+lvDly )		{ image_index = 9;	ySpeed = 0; }
		else if ( process < 66+lvDly )		{ image_index = 10;	ySpeed = 0; }
		else if ( process < 72+lvDly )		{ image_index = 11;	ySpeed = 0; }
		else if ( process < 78+lvDly )		{ image_index = 12;	ySpeed = 0; }
		else if ( process < 84+lvDly )		{ image_index = 13;	ySpeed = 0; }
		else if ( process < 90+lvDly )		{ image_index = 14;	ySpeed = 0; }
		else if ( process < 96+lvDly )		{ image_index = 15;	ySpeed = 0; }
		else if ( process < 102+lvDly )		{ image_index = 16;	ySpeed = 0; }
		else if ( process < 108+lvDly )		{ image_index = 17;	ySpeed = 0; }
		else if ( process < 114+lvDly )		{ image_index = 18;	ySpeed = 0; }
		else if ( process < 120+lvDly )		{ image_index = 19;	ySpeed = 0; }
		else if ( process < 126+lvDly )		{ image_index = 20;	ySpeed = 0; }
		else if ( process < 132+lvDly )		{ image_index = 21;	ySpeed = 0; }
		else if ( process < 138+lvDly )		{ image_index = 22;	ySpeed = 0; }
		else if ( process < 144+lvDly )		{ image_index = 23;	ySpeed = 0; }
		else if ( process < 150+lvDly )		{ image_index = 24;	ySpeed = 0; }
		else if ( process < 156+lvDly )		{ image_index = 25;	ySpeed = 0; }
		else if ( process < 162+lvDly )		{ image_index = 26;	ySpeed = 0; }
		else if ( process < 168+lvDly )		{ image_index = 27;	ySpeed = 0; }
		else if ( process < 174+lvDly )		{ image_index = 28;	ySpeed = 0; }
		else if ( process < 180+lvDly )		{ image_index = 29;	ySpeed = 0; }
		else if ( process < 186+lvDly )		{ image_index = 30;	ySpeed = 0; }
		else if ( process < 192+lvDly )		{ image_index = 31;	ySpeed = -8; }
		else if ( process < 198+lvDly )		{ image_index = 32;	ySpeed = -4; }
		else if ( process < 204+lvDly )		{ image_index = 32;	ySpeed = 0; }
		else if ( process < 210+lvDly )		{ image_index = 33;	ySpeed = 10; }
		else if ( process < 216+lvDly )		{ image_index = 34; }
		else if ( process < 222+lvDly )		{ image_index = 35; }
		else if ( process < 228+lvDly )		{ image_index = 36; }
		else if ( process < 234+lvDly )		{ image_index = 37; }
		else if ( process < 240+lvDly )		{ image_index = 38; }
		else { sc_guBossNS();	state = 10;	delay = 20;	process = 0; }
	}

	
	else if ( state == 30 ) {
		process++;
		sprite_index = sp_gu_backstep;
		var bSpd = 18;
		//if (nextState == 12)	bSpd = 27;
		
		isDK = true;	isDF = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 8 ) { image_index = 1; xSpeed = dir*bSpd*-1/3; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*bSpd*-1; }
		else if ( process < 24 ) { image_index = 3; xSpeed = dir*bSpd*-1/2; }
		else if ( process < 28 ) { image_index = 4; xSpeed = dir*bSpd*-1/3; }
		else if ( process < 32 ) { image_index = 5; }
		else if ( process < 36 ) { image_index = 6; }
		else { state = nextState;	process = 0;	delay = 0; }
	}
	
	else if ( state == 31 ) {
		process++;
		sprite_index = sp_gu_counter;
		
		isDK = true;
		
		//if ( process == 1 ) { SE_Play(s_guBoss_atk1_1, global.vol); }
		
		if (process == 48+lvDly) {
			SE_Play(s_guBoss_atk3_2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_gu_counterEf;
		}
		
		
		if ( process < 6 ) { image_index = 0; xSpeed = dir*18*-1;}
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*14*-1; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*7*-1; }
		else if ( process < 24 ) { image_index = 3; xSpeed = dir*3*-1;}
		else if ( process < 40+lvDly ) { image_index = 4; }
		else if ( process < 48+lvDly ) { image_index = 5; xSpeed = dir*15}
		else if ( process < 56+lvDly ) { image_index = 6; }
		else if ( process < 64+lvDly ) { image_index = 7; }
		else if ( process < 80+lvDly ) { image_index = 8; }
		else { state = 9;	process = 90;	delay = 0; }
	}
	
	else if ( state == 32 ) {
		process++;
		sprite_index = sp_dokBoss_counter2;
		
		isDK = true;
		
		if (process == 65+lvDly) {
			SE_Play(s_guBoss_atk4, global.vol);
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
			sc_guBossNS(nextState);
			if (isStun) {
				isStun = false;
				state = 9;
				process = 80;
			}
			kbIndex = 0;
		}
	}
	
	else if ( state == 9 ) {
		sc_guBossNS(nextState);
	}
}

function sc_guBossNS(nState = nextState) {
	if (spawnIndex < 3)
	{
		nextState = 20;
		return;
	}
	
	var rIndex = irandom_range(0, 10);
	if (nState == 12)
	{
		if (rIndex < 2)			{ nextState = 12; }
		else if (rIndex < 5)	{ nextState = 13; }
		else if (rIndex < 8)	{ nextState = 14;	delay = 0; }
		else					{ nextState = 15; }
	}
	else if (nState == 13)
	{
		if (rIndex < 3)			{ nextState = 12; }
		else if (rIndex < 5)	{ nextState = 13; }
		else if (rIndex < 8)	{ nextState = 14;	delay = 0; }
		else					{ nextState = 15; }
	}
	else if (nState == 14)
	{
		if (rIndex < 2)			nextState = 12;
		else if (rIndex < 4)	nextState = 13;
		else					nextState = 15;
	}
	else 
	{
		if (rIndex < 3)			{ nextState = 12; }
		else if (rIndex < 6)	{ nextState = 13; }
		else					{ nextState = 14;	delay = 0; }
	}
}