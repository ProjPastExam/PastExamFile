// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cBoss2Atk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	isDA = true;	isDK = false;	isDF = false;
	//isCounter = false;
	
	if (isJump) ySpeed += 0.5;
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			nextState = sc_cBoss2AtkNext();
			//nextState = 16;
			state = 11;
		}
		
	}
	else if ( state == 11 ){
		//if ( nextState == 20 )	sc_jpBossRdy();
		var disIndex1 = 800;
		var disIndex2 = 400;
		if (nextState == 14) { disIndex1 = 1000;	disIndex2 = 600; }
		if (nextState == 16) { disIndex1 = 600;	disIndex2 = 0; }
		if (nextState == 21) { disIndex1 = 100;	disIndex2 = 1000;	atk5Index = 0; }
		//sc_mobRun(12, disIndex1, disIndex2, 30, nextState, plX, left1, left2, right1, right2);
		sc_mobRun(6, disIndex1, disIndex2, 12, nextState, plX, left1, left2, right1, right2);
	}
	else if ( state == 12 ) {
		process++;
		xSpeed = 0;
		sprite_index = sp_cB2_backstep;
		isDK = true;	isDF = true;
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; xSpeed = dir*-24; }
		else if ( process < 30 ) { image_index = 2; xSpeed = dir*-12; }
		else if ( process < 36 ) { image_index = 3; }
		else if ( process < 42 ) { image_index = 4; }
		else { state = nextState;	process = 0; }
	}
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_cB2_atk1;
		xSpeed = 0;
		isDF = true;
		isCounter = true;
		
		if ( process == 1 ) { SE_Play(s_cB1_atk1_1, global.vol); }
		if ( process == 108+lvDly ) {
			var plX = sc_pl_get("x");
			if (plX > x)	dir = 1;
			else			dir = -1;
		}
		if ( process == 60+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk1Ef_1;
			ob.image_xscale = dir;
		}
		
		if ( process == 98+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk1Ef_2;
			ob.image_xscale = dir;
		}
		
		if ( process == 154+lvDly ) { 
			SE_Play(s_jpBoss_atk1_2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk1Ef_3;
			ob.image_xscale = dir;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 40+lvDly ) { image_index = 2; }
		else if ( process < 60+lvDly ) { image_index = 3; xSpeed = dir*20; }
		else if ( process < 72+lvDly ) { image_index = 4; }
		else if ( process < 78+lvDly ) { image_index = 5; }
		else if ( process < 98+lvDly ) { image_index = 6; xSpeed = dir*20; }
		else if ( process < 102+lvDly ) { image_index = 7; }
		else if ( process < 108+lvDly ) { image_index = 8; }
		else if ( process < 114+lvDly ) { image_index = 9; }
		else if ( process < 134+lvDly ) { image_index = 10; }
		else if ( process < 154+lvDly ) { image_index = 11; xSpeed = dir*30; }
		else if ( process < 164+lvDly ) { image_index = 12; }
		else if ( process < 180+lvDly ) { image_index = 13; }
		else { state = 10;	delay = 50;	process = 0;	isCounter = false; }
	}
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_cB2_atk2;
		xSpeed = 0;
		isDK = true;
		//isCounter = true;
		
		if ( process == 1 ) { SE_Play(s_cB1_atk1_1, global.vol); }
		if ( process == 60+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk2Ef_1;
			ob.image_xscale = dir;
		}
		
		if ( process == 100+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk2Ef_2;
			ob.image_xscale = dir;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 20+lvDly ) { image_index = 1; }
		else if ( process < 30+lvDly ) { image_index = 2; xSpeed = dir*10; }
		else if ( process < 60+lvDly ) { image_index = 2; xSpeed = dir*20; }
		else if ( process < 65+lvDly ) { image_index = 3;  }
		else if ( process < 70+lvDly ) { image_index = 4; }
		else if ( process < 75+lvDly ) { image_index = 5; }
		else if ( process < 80+lvDly ) { image_index = 6; }
		else if ( process < 100+lvDly ) { image_index = 7; xSpeed = dir*20; }
		else if ( process < 105+lvDly ) { image_index = 8; }
		else if ( process < 120+lvDly ) { image_index = 9; }
		else { state = 10;	delay = 70;	process = 0; }
	}
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_cB2_counter;
		xSpeed = 0;
		isDK = true;	isDF = true;
		
		if ( process == 24 ) { SE_Play(s_st3_boss4, global.vol); }
		if ( process == 54+lvDly ) { 
			uc_shake(10, 0.1);
			SE_Play(s_st3_boss3, global.vol);
			var ob = instance_create_layer(x, y-100, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_counterEf;
			ob.image_xscale = dir;
		}
		
		
		if ( process < 12 ) { image_index = 0;	xSpeed = dir*-15 };
		else if ( process < 18 ) { image_index = 0;	xSpeed = dir*-10 }
		else if ( process < 24 ) { image_index = 1; xSpeed = dir*-5 }
		else if ( process < 30+lvDly ) { image_index = 2; }
		else if ( process < 36+lvDly ) { image_index = 3; }
		else if ( process < 42+lvDly ) { image_index = 4; }
		else if ( process < 48+lvDly ) { image_index = 5; }
		else if ( process < 54+lvDly ) { image_index = 6; }
		else if ( process < 60+lvDly ) { image_index = 7; }
		else if ( process < 66+lvDly ) { image_index = 8; }
		else if ( process < 72+lvDly ) { image_index = 9; }
		else if ( process < 78+lvDly ) { image_index = 10; }
		else if ( process < 90+lvDly ) { image_index = 11; }
		else { state = 9;	delay = 30;	process = 90;	isCounter = false; }
	}
	
	else if (state == 16) {
		process++;
		sprite_index = sp_cB2_atk4;
		isDK = true;	isDF = true;
		
		if ( process == 120 ) {
			var plX = sc_pl_get("x");
			if (plX > x)	dir = 1;
			else			dir = -1;
		}
		
		if ( process == 16 ) { SE_Play(s_st3_boss4, global.vol); }
		if ( process == 80+lvDly || process == 152+lvDly ) { 
			uc_shake(10, 0.1);
			SE_Play(s_st3_boss3, global.vol);
			var ob = instance_create_layer(x, y-100, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_counterEf;
			ob.image_xscale = dir;
		}
		
		if ( process < 8 ) { image_index = 0; };
		else if ( process < 16 ) { image_index = 1;	}
		else if ( process < 24 ) { image_index = 2; }
		else if ( process < 32 ) { image_index = 3; }
		else if ( process < 40 ) { image_index = 4; }
		else if ( process < 48+lvDly ) { image_index = 5; }
		else if ( process < 56+lvDly ) { image_index = 6; }
		else if ( process < 64+lvDly ) { image_index = 7; }
		else if ( process < 72+lvDly ) { image_index = 8; xSpeed = dir*10; }
		else if ( process < 80+lvDly ) { image_index = 9; xSpeed = dir*20; }
		else if ( process < 88+lvDly ) { image_index = 10; }
		else if ( process < 96+lvDly ) { image_index = 11; }
		else if ( process < 104+lvDly ) { image_index = 12; }
		else if ( process < 112+lvDly ) { image_index = 13; }
		else if ( process < 120+lvDly ) { image_index = 14; }
		else if ( process < 128+lvDly ) { image_index = 6; }
		else if ( process < 136+lvDly ) { image_index = 7; }
		else if ( process < 144+lvDly ) { image_index = 8; xSpeed = dir*10; }
		else if ( process < 152+lvDly ) { image_index = 9; xSpeed = dir*20; }
		else if ( process < 160+lvDly ) { image_index = 10; }
		else if ( process < 168+lvDly ) { image_index = 11; }
		else if ( process < 176+lvDly ) { image_index = 12; }
		else if ( process < 184+lvDly ) { image_index = 13; }
		else if ( process < 210+lvDly ) { image_index = 14; }
		else { state = 10;	process = 0;	delay = 60; }
		
	}
	
	else if (state == 20) {
		isDK = true;
		
		sc_mobRun(20, 500, 0, 12, 21, plX, left1, left2, right1, right2);
		sprite_index = sp_cB2_atk5run;
		
	}
	
	else if (state == 21) {
		process++;
		sprite_index = sp_cB2_atk5;
		isDK = true;
		
		if ( process == 1 ) { SE_Play(s_cB1_atk1_1, global.vol); }
		if ( process == 24+lvDly ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y-100, "effect", ob_mobAtkTrack);
			ob.sprite_index = sp_cB2_atk5Ef;
			ob.image_xscale = dir;
			ob.ob = id;
			ob.life = 20;
		}
		
		if ( process < 8 )				{ image_index = 0;	xSpeed = dir*5; }
		else if ( process < 16 )		{ image_index = 1;	xSpeed = dir*0; }
		else if ( process < 24+lvDly )	{ image_index = 1; }
		else if ( process < 40+lvDly )	{ image_index = 2;	xSpeed = dir*35; }
		else if ( process < 48+lvDly )	{ image_index = 3;	xSpeed = dir*25; }
		else if ( process < 56+lvDly )	{ image_index = 4;	xSpeed = dir*15; }
		else if ( process < 64+lvDly )	{ image_index = 5;	xSpeed = dir*10; }
		else { state = 22;	process = 0;	delay = 60; }
		
	}
	
	else if (state == 22) {
		isDK = true;
		sprite_index = sp_cB2_atk5run;
		xSpeed = dir*20;
		
		if (atk5Index > 1)	{ state = 10;	delay = 120;	process = 0;	sc_cBoss2AtkNext(); }
		
		var dIndex = 200;
		if (x < dIndex || x > room_width-dIndex)	{ state = 23; }
	}
	
	else if (state == 23) {
		process++;
		isDK = true;
		sprite_index = sp_cB2_atk5stop;
		xSpeed = dir*(5-process)*4;
		
		if (process > 4)	
		{ 
			dir = dir*-1;	state = 20;		atk5Index++;
		}
	}
	
	else if ( state == 5 || state == 6 || state == 7 || state == 8 ) {
		if (isCounter) {
			isCounter = false;
			isStun = false;
			state = 15;
			process = 0;
		}
		
		if (kbIndex == 1) {
			//sc_cBoss1AtkNext(nextState);
			delay = phaseDelay*3;
		}
	}
}

function sc_cBoss2AtkNext(index = nextState){
	var ran = random_range(0, 10);
	
	if (index == 13) {
		if (ran < 2)		{ return 13; }
		else if (ran < 7)	{ return 21; }
		else				{ return 16; }
	}
	else if (index == 14) {	
		if (ran < 2)		{ return 21; }
		else if (ran < 7)	{ return 13; }
		else				{ return 16; }
	}
	else if (index == 16) {	
		if (ran < 6)		{ return 13; }
		else				{ return 21; }
	}
	else {
		return 13;
	}

}