// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_sinBossAtk(){
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
		if (nextState == 14) { disIndex1 = 1200;	disIndex2 = 800; }
		if (nextState == 20) { disIndex1 = 800;		disIndex2 = 600; }
		if (nextState == 22) { disIndex1 = 1000;	disIndex2 = 800; }
		if (nextState == 25) { disIndex1 = 600;		disIndex2 = 0; }
		if (nextState == 26) { disIndex1 = 600;		disIndex2 = 0; }
		sc_mobRun(12, disIndex1, disIndex2, 30, nextState, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_sinB_atk1;
		xSpeed = 0;
		isDF = true;
		//isCounter = 1;

		
		if ( process == 1 ) 
		{ 
			sc_sinMode(0);
			//SE_Play(s_bandit01atk1, global.vol); 
			if (isCounter == 0)	isCounter = 1;
		}
		if ( process == 36+lvDly ) { 
			SE_Play(s_swing_c2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB_atk1Ef1;
		}
		
		if ( process == 48+lvDly ) { 
			SE_Play(s_swing_c2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB_atk1Ef2;
		}
		
		if ( process < 6 )					{ image_index = 0; }
		else if ( process < 12 )			{ image_index = 1; }
		else if ( process < 24+lvDly )		{ image_index = 2; }
		else if ( process < 30+lvDly )		{ image_index = 3;	xSpeed = 24*dir; }
		else if ( process < 36+lvDly )		{ image_index = 4;	xSpeed = 24*dir; }
		else if ( process < 39+lvDly )		{ image_index = 5; }
		else if ( process < 42+lvDly  )		{ image_index = 6; }
		else if ( process < 48+lvDly  )		{ image_index = 7;	xSpeed = 24*dir; }
		else if ( process < 54+lvDly  )		{ image_index = 8; }
		else if ( process < 60+lvDly  )		{ image_index = 9; }
		else { state = 13;	process = 0; isCounter = 0; }
	}
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_sinB_atk1;
		xSpeed = 0;
		isDF = true;
		//isCounter = 1;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
			if (isCounter == 0)	isCounter = 1;
		}
		
		//if ( process == 1 ) { SE_Play(s_bandit01atk1, global.vol); }
		if ( process == 24+lvDly ) { 
			SE_Play(s_swing_c2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB_atk1Ef3;
		}
		
		if ( process == 36+lvDly ) { 
			SE_Play(s_swing_c2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB_atk1Ef4;
		}
		
		
		if ( process < 12+lvDly )			{ image_index = 9; }
		else if ( process < 18+lvDly )		{ image_index = 10;	xSpeed = 24*dir; }
		else if ( process < 24+lvDly )		{ image_index = 11;	xSpeed = 24*dir; }
		else if ( process < 27+lvDly )		{ image_index = 12; }
		else if ( process < 30+lvDly )		{ image_index = 13; }
		else if ( process < 33+lvDly )		{ image_index = 14;	xSpeed = 24*dir; }
		else if ( process < 36+lvDly )		{ image_index = 15;	xSpeed = 24*dir; }
		else if ( process < 42+lvDly )		{ image_index = 16; }
		else if ( process < 48+lvDly )		{ image_index = 17; }
		else if ( process < 54+lvDly )		{ image_index = 18; }
		else if ( process < 60+lvDly )		{ image_index = 19; }
		else { sc_sinBossNS();	state = 10;	delay = 30;	process = 0; isCounter = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_sinB_atk2;
		xSpeed = 0;
		isDF = true;
		
		if ( process == 18+lvDly  ) { 
			//SE_Play(s_jpBoss_atk2, global.vol);
		}
		
		
		if ( process < 6 )				{ image_index = 0; }
		else if ( process < 18+lvDly )	{ image_index = 1; }
		else if ( process < 24+lvDly )	{ image_index = 2; }
		else if ( process < 30+lvDly )	{ image_index = 3; }
		else if ( process < 36+lvDly )	{ image_index = 4; }
		else { sc_sinBossNS();	process = 0;	state = 15; }
	}
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_sinB_atk2;
		xSpeed = 0;
		isDF = true;
		
		if ( process == 1 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
		}
		
		if ( process == 50 ) { 
			SE_Play(s_jpBoss_atk2, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB_atk2Ef;
		}
		
		if (process > 50 && isJump) {
			xSpeed = 5 * dir;
		}
		
		if ( process < 5 ) { image_index = 4;	ySpeed = 0; }
		else if ( process < 45 ) { 
			ySpeed = 0;
			xSpeed = dir * 30;	sprite_index = sp_sinB_atk2D;
			var disIndex = abs(plX-x);
			if (disIndex < 350 && disIndex > 0 && process > 20) { process = 45; }
			if ((x < 300 || x > room_width - 300) && process > 20) { process = 45; }
		}
		else if ( process < 50 ) { image_index = 8; xSpeed = 20*dir;	ySpeed = 0; }
		else if ( process < 55 ) { image_index = 9; xSpeed = 15*dir;	ySpeed = 0; }
		else if ( process < 60 ) { image_index = 10;	xSpeed = 10*dir;	ySpeed = 0; }
		else if ( process < 65 ) { image_index = 11;	xSpeed = 5*dir;}
		else if ( process < 80 ) { image_index = 12; }
		else { state = 10;	process = 0;	delay = 30; }
		
	}
	
	else if ( state == 20 ) {
		process++;
		sprite_index = sp_sinB2_atk1;
		xSpeed = 0;
		isDK = true;
		isCounter = 3;
		
		if (process == 1) 
		{
			sc_sinMode(1);
			if ( x > plX ) dir = -1;
			else dir = 1;
			//SE_Play(s_jp_dAtk, global.vol); 
		}
		
		if ( process == 60+lvDly ) 
		{ 
			var xIndex = 1000;
			if (dir == -1 && x < xIndex)			{ xIndex = x-128; }
			if (dir == 1 && x > room_width-xIndex)	{ xIndex = room_width-x-192; }
			x += xIndex*dir;
			SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x, y-20, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB2_atk1Ef;
		}
		
		if ( process < 6 )					{ image_index = 0; }
		else if ( process < 12 )			{ image_index = 1; }
		else if ( process < 30+lvDly )		{ image_index = 2; }
		else if ( process < 36+lvDly )		{ image_index = 3; }
		else if ( process < 42+lvDly )		{ image_index = 4; }
		else if ( process < 48+lvDly )		{ image_index = 5; }
		else if ( process < 54+lvDly )		{ image_index = 6; }
		else if ( process < 60+lvDly )		{ image_index = 7; }
		else if ( process < 66+lvDly )		{ image_index = 8; }
		else if ( process < 72+lvDly )		{ image_index = 9; }
		else if ( process < 78+lvDly )		{ image_index = 10; }
		else if ( process < 84+lvDly )		{ image_index = 11; }
		else if ( process < 90+lvDly )		{ image_index = 12; }
		else if ( process < 96+lvDly )		{ image_index = 13; }
		else if ( process < 105+lvDly )		{ image_index = 14; }
		else { sc_sinBossNS();	state = 10;	delay = 30;	process = 0;	isCounter = 0; }
	}
	
	else if ( state == 21 ) {
		process++;
		sprite_index = sp_sinB2_atk2;
		xSpeed = 0;
		isDK = true;
		isCounter = 3;
		
		if (process == 66) 
		{
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process == 42+lvDly ) 
		{ 
			SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB2_atk2Ef1;
		}
		
		if ( process == 78+lvDly ) 
		{ 
			SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB2_atk2Ef2;
		}
		
		if ( process < 6 )					{ image_index = 0; }
		else if ( process < 12 )			{ image_index = 1; }
		else if ( process < 24+lvDly )		{ image_index = 2; }
		else if ( process < 30+lvDly )		{ image_index = 3; }
		else if ( process < 36+lvDly )		{ image_index = 4; }
		else if ( process < 42+lvDly )		{ image_index = 5;	xSpeed = 24*dir; }
		else if ( process < 48+lvDly )		{ image_index = 6; }
		else if ( process < 66+lvDly )		{ image_index = 7; }
		else if ( process < 72+lvDly )		{ image_index = 8; }
		else if ( process < 78+lvDly )		{ image_index = 9;	xSpeed = 24*dir; }
		else if ( process < 84+lvDly )		{ image_index = 10; }
		else if ( process < 90+lvDly )		{ image_index = 11; }
		else if ( process < 96+lvDly )		{ image_index = 12; }
		else if ( process < 105+lvDly )		{ image_index = 13; }
		else { sc_sinBossNS();	state = 10;	delay = 50;	process = 0;	isCounter = 0; }
	}
	
	else if ( state == 22 ) {
		process++;
		sprite_index = sp_sinB2_warp1;
		xSpeed = 0;
		isDK = true;	isDF = true;
		
		if (process == 36) 
		{
			x = tgX;
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process == 1 ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x, y-20, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB2_warp1Ef;
		}
		
		if ( process == 20 ) 
		{ 
			if (plX < room_width/2)	{ tgX = plX - 300; }
			else					{ tgX = plX + 300; }
			if (tgX < 128)				{ tgX = plX + 300; }
			if (tgX > room_width-128)	{ tgX = plX - 300; }
			//SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(tgX, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB2_warp2Ef;
		}
		
		if ( process < 6 )				{ image_index = 6; }
		else if ( process < 12 )		{ image_index = 4; }
		else if ( process < 18 )		{ image_index = 5; }
		else if ( process < 24 )		{ image_index = 6; }
		else if ( process < 30 )		{ image_index = 4; }
		else if ( process < 36 )		{ image_index = 5; }
		else if ( process < 42 )		{ image_index = 6; }
		else if ( process < 48 )		{ image_index = 4; }
		else if ( process < 54 )		{ image_index = 5; }
		else if ( process < 60 )		{ image_index = 6; }
		else { state = 21;	process = 0; }
	}
	
	else if ( state == 25 ) {
		process++;
		sprite_index = sp_sinB3_atk1;
		xSpeed = 0;
		isDK = true;	isDF = true;
		
		if (process == 1) 
		{
			image_index = 0;
		}
		
		if ( process == 15 ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkRdy);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB3_atk1Ef1;
			ob.obCreate		= ob_mobAtk2;
			ob.obSprite		= sp_sinB3_atk1Ef2;
			ob.soundEf		= s_cB1_atk1_1
			ob.dmg			= 1;
			
			instance_create_layer(x+600, y+50, "Instances", ob_sinSo);
			instance_create_layer(x-600, y+50, "Instances", ob_sinSo);
		}
		
		if ( process == 35 ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			instance_create_layer(x+1000, y+50, "Instances", ob_sinSo);
			instance_create_layer(x-1000, y+50, "Instances", ob_sinSo);
		}
		
		if ( process == 55 ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			instance_create_layer(x+1400, y+50, "Instances", ob_sinSo);
			instance_create_layer(x-1400, y+50, "Instances", ob_sinSo);
		}
		
		if ( process < 300 )				{  }
		else { sc_sinBossNS();	state = 10;	delay = 0;	process = 0; }
	}
	
	else if ( state == 26 ) {
		process++;
		sprite_index = sp_sinB3_atk1;
		xSpeed = 0;
		isDK = true;	isDF = true;
		
		if (process == 1) 
		{
			image_index = 0;
		}
		
		if ( process == 15 ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtkRdy);
			ob.image_xscale = dir;
			ob.dir			= dir;
			ob.sprite_index = sp_sinB3_atk2Ef1;
			ob.obCreate		= ob_mobAtk2;
			ob.obSprite		= sp_sinB3_atk2Ef2;
			ob.soundEf		= s_cB1_atk1_1
			ob.dmg			= 1;
		}
		
		if ( process == 200 ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x+400, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB3_atk2Ef3;
			
			ob = instance_create_layer(x-400, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB3_atk2Ef3;
		}
		
		if ( process == 230+lvDly ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x+800, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB3_atk2Ef3;
			
			ob = instance_create_layer(x-800, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB3_atk2Ef3;
		}
		
		if ( process == 260+lvDly*2 ) 
		{ 
			//SE_Play(s_jpBoss_atk2, global.vol);
			var ob = instance_create_layer(x+1200, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB3_atk2Ef3;
			
			ob = instance_create_layer(x-1200, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB3_atk2Ef3;
		}
		
		if ( process < 300 )				{  }
		else { sc_sinBossNS();	state = 10;	delay = 0;	process = 0; }
	}
	
	
	else if ( state == 30 ) {
		process++;
		sprite_index = backSp;
		var bSpd = 30;
		//if (nextState == 12)	bSpd = 27;
		
		isDK = true;	isDF = true;
		
		if (process == 1) {
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if ( process < 4 ) { image_index = 2; }
		else if ( process < 18 ) { image_index = 3; xSpeed = dir*bSpd*-1; }
		else if ( process < 24 ) { image_index = 4; xSpeed = dir*bSpd*-1/2; }
		else if ( process < 28 ) { image_index = 5; }
		else { state = nextState;	process = 0;	delay = 0; }
	}
	
	else if ( state == 31 ) {
		process++;
		sprite_index = sp_sinB_counter;
		
		isDF = true;
		
		if (process == 54+lvDly) {
			//SE_Play(s_swing_a2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB_counterEf;
		}
		
		
		if ( process < 6 ) { image_index = 0; xSpeed = dir*18*-1;}
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*12*-1; }
		else if ( process < 18 ) { image_index = 2; xSpeed = dir*6*-1; }
		else if ( process < 30 ) { image_index = 3; }
		else if ( process < 36 ) { image_index = 4; }
		else if ( process < 42 ) { image_index = 5; }
		else if ( process < 54+lvDly ) { image_index = 6; }
		else if ( process < 60+lvDly ) { image_index = 7; }
		else if ( process < 66+lvDly ) { image_index = 8; }
		else if ( process < 72+lvDly ) { image_index = 9; }
		else if ( process < 78+lvDly ) { image_index = 10; }
		else { state = 9;	process = 90;	delay = 0; }
	}
	
	else if ( state == 32 ) {
		process++;
		sprite_index = sp_sinB2_counter;
		
		isDK = true;
		
		if (process == 69+lvDly) {
			//SE_Play(s_swing_a2, global.vol);
			var ob = instance_create_layer(x, y-50, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_sinB2_counterEf;
		}
		
		
		if ( process < 20 ) { image_index = 0; xSpeed = dir*(process-20);	isDF = true; }
		else if ( process < 24+lvDly ) { image_index = 0; }
		else if ( process < 30+lvDly ) { image_index = 1; }
		else if ( process < 36+lvDly ) { image_index = 2; }
		else if ( process < 42+lvDly ) { image_index = 3; }
		else if ( process < 48+lvDly ) { image_index = 4; }
		else if ( process < 54+lvDly ) { image_index = 5; }
		else if ( process < 66+lvDly ) { image_index = 6; }
		else if ( process < 72+lvDly ) { image_index = 7; }
		else if ( process < 78+lvDly ) { image_index = 8; }
		else if ( process < 84+lvDly ) { image_index = 9; }
		else if ( process < 150+lvDly ) { image_index = 10;	isDF = true; }
		else if ( process < 156+lvDly ) { image_index = 11;	isDF = true; }
		else if ( process < 162+lvDly ) { image_index = 12;	isDF = true; }
		else { state = 10;	process = 0;	delay = 50; }
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
			if (isCounter == 3) { state = 32;	isCounter = 0; }
			if (isCounter == 1) { state = 31;	isCounter = 0; }
			isStun = false;
			
			process = 0;
		}
		if (kbIndex == 1) {
			sc_sinBossNS(nextState);
			if (isStun) {
				isStun = false;
				state = 9;
				process = 80;
			}
			kbIndex = 0;
		}
	}
	
	else if ( state == 9 ) {
		sc_sinBossNS(nextState);
		if (process > 60 && process < 20) process--;
	}
}

function sc_sinBossNS(nState = nextState) {
	var rIndex = irandom_range(0, 10);
	if (nState == 12 || nState == 13)
	{
		if (rIndex < 3)			nextState = 13;
		else if (rIndex < 7)	nextState = 14;
		else if (rIndex < 10)	nextState = 20;
		else					nextState = 26;
	}
	else if (nState == 14)
	{
		if (rIndex < 4)			nextState = 13;
		else if (rIndex < 6)	nextState = 14;
		else if (rIndex < 10)	nextState = 20;
		else					nextState = 25;
	}
	else if (nState == 20)
	{
		if (rIndex < 3)			nextState = 12;
		else if (rIndex < 10)	nextState = 22;
		else					nextState = 25;
	}
	else if (nState == 22)
	{
		if (rIndex < 8)			nextState = 12;
		else if (rIndex < 10)	nextState = 22;
		else					nextState = 26;
	}
	else 
	{
		if (rIndex < 5)	nextState = 12;
		else			nextState = 20;
	}
}

function sc_sinMode(mode = 0) 
{
	if (mode == 0)
	{
		standSp		= sp_sinB_stand;
		stand2Sp	= sp_sinB_stand;
		walkSp		= sp_sinB_walk;
		runSp		= sp_sinB_run;
		painSp		= sp_sinB_hit;
		shockSp		= sp_sinB_shock;	
		backSp		= sp_sinB_backstep;
	}
	else if (mode == 1)
	{
		standSp		= sp_sinB2_stand;
		stand2Sp	= sp_sinB2_stand;
		walkSp		= sp_sinB2_walk;
		runSp		= sp_sinB2_run;
		painSp		= sp_sinB2_hit;
		shockSp		= sp_sinB2_shock;
		backSp		= sp_sinB2_backstep;
	}
	sinMode = mode;
}