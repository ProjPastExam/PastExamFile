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
		if ( process == 134 ) {
			var plX = sc_pl_get("x");
			if (plX > x)	dir = 1;
			else			dir = -1;
		}
		if ( process == 80 ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk1Ef_1;
			ob.image_xscale = dir;
		}
		
		if ( process == 122 ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk1Ef_2;
			ob.image_xscale = dir;
		}
		
		if ( process == 180 ) { 
			SE_Play(s_jpBoss_atk1_2, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk1Ef_3;
			ob.image_xscale = dir;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 60 ) { image_index = 2; }
		else if ( process < 80 ) { image_index = 3; xSpeed = dir*20; }
		else if ( process < 96 ) { image_index = 4; }
		else if ( process < 102 ) { image_index = 5; }
		else if ( process < 122 ) { image_index = 6; xSpeed = dir*20; }
		else if ( process < 128 ) { image_index = 7; }
		else if ( process < 134 ) { image_index = 8; }
		else if ( process < 140 ) { image_index = 9; }
		else if ( process < 160 ) { image_index = 10; }
		else if ( process < 180 ) { image_index = 11; xSpeed = dir*30; }
		else if ( process < 190 ) { image_index = 12; }
		else if ( process < 210 ) { image_index = 13; }
		else { state = 10;	delay = 50;	process = 0;	isCounter = false; }
	}
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_cB2_atk2;
		xSpeed = 0;
		isDK = true;
		//isCounter = true;
		
		if ( process == 1 ) { SE_Play(s_cB1_atk1_1, global.vol); }
		if ( process == 60 ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk2Ef_1;
			ob.image_xscale = dir;
		}
		
		if ( process == 100 ) { 
			SE_Play(s_jpBoss_atk1_1, global.vol);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_atk2Ef_2;
			ob.image_xscale = dir;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 20 ) { image_index = 1; }
		else if ( process < 30 ) { image_index = 2; xSpeed = dir*10; }
		else if ( process < 60 ) { image_index = 2; xSpeed = dir*20; }
		else if ( process < 65 ) { image_index = 3;  }
		else if ( process < 70 ) { image_index = 4; }
		else if ( process < 75 ) { image_index = 5; }
		else if ( process < 80 ) { image_index = 6; }
		else if ( process < 100 ) { image_index = 7; xSpeed = dir*20; }
		else if ( process < 105 ) { image_index = 8; }
		else if ( process < 120 ) { image_index = 9; }
		else { state = 10;	delay = 70;	process = 0; }
	}
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_cB2_counter;
		xSpeed = 0;
		isDK = true;	isDF = true;
		
		if ( process == 24 ) { SE_Play(s_st3_boss4, global.vol); }
		if ( process == 54 ) { 
			uc_shake(10, 0.1);
			SE_Play(s_st3_boss3, global.vol);
			var ob = instance_create_layer(x, y-100, "effect", ob_mobAtk2);
			ob.sprite_index = sp_cB2_counterEf;
			ob.image_xscale = dir;
		}
		
		
		if ( process < 12 ) { image_index = 0;	xSpeed = dir*-15 };
		else if ( process < 18 ) { image_index = 0;	xSpeed = dir*-10 }
		else if ( process < 24 ) { image_index = 1; xSpeed = dir*-5 }
		else if ( process < 30 ) { image_index = 2; }
		else if ( process < 36 ) { image_index = 3; }
		else if ( process < 42 ) { image_index = 4; }
		else if ( process < 48 ) { image_index = 5; }
		else if ( process < 54 ) { image_index = 6; }
		else if ( process < 60 ) { image_index = 7; }
		else if ( process < 66 ) { image_index = 8; }
		else if ( process < 72 ) { image_index = 9; }
		else if ( process < 78 ) { image_index = 10; }
		else if ( process < 90 ) { image_index = 11; }
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
		if ( process == 80 || process == 152 ) { 
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
		else if ( process < 48 ) { image_index = 5; }
		else if ( process < 56 ) { image_index = 6; }
		else if ( process < 64 ) { image_index = 7; }
		else if ( process < 72 ) { image_index = 8; xSpeed = dir*10; }
		else if ( process < 80 ) { image_index = 9; xSpeed = dir*20; }
		else if ( process < 88 ) { image_index = 10; }
		else if ( process < 96 ) { image_index = 11; }
		else if ( process < 104 ) { image_index = 12; }
		else if ( process < 112 ) { image_index = 13; }
		else if ( process < 120 ) { image_index = 14; }
		else if ( process < 128 ) { image_index = 6; }
		else if ( process < 136 ) { image_index = 7; }
		else if ( process < 144 ) { image_index = 8; xSpeed = dir*10; }
		else if ( process < 152 ) { image_index = 9; xSpeed = dir*20; }
		else if ( process < 160 ) { image_index = 10; }
		else if ( process < 168 ) { image_index = 11; }
		else if ( process < 176 ) { image_index = 12; }
		else if ( process < 184 ) { image_index = 13; }
		else if ( process < 210 ) { image_index = 14; }
		else { state = 10;	process = 0;	delay = 60; }
		
	}
	
	else if (state == 17) {
		process++;
		sprite_index = sp_cB1_command2;
		isDK = true;	isDF = true;
		
		if (process == 10) {
			sc_cBoss1Command(0);
		}
		
		if (process == 40) {
			sc_cBoss1Command(1);
		}
		
		if (process == 70) {
			sc_cBoss1Command(2);
		}
		
		if ( process == 90 ) { 
			//SE_Play(s_jp_dAtk, global.vol); 
			with (ob_cB1G) {
				state = 2;	process = 0;
			}
		}
		
		if ( process < 110 ) {  }
		else { state = 18;	process = 0;	delay = 0;  }
		
	}
	
	else if (state == 18) {
		process++;
		sprite_index = sp_cB1_command1;
		
		isDK = true;	isDF = true;
		if ( process < 6 ) { image_index = 13; }
		else if ( process < 12 ) { image_index = 14; }
		else if ( process < 18 ) { image_index = 15; }
		else if ( process < 24 ) { image_index = 16; }
		else if ( process < 50 ) { image_index = 17; }
		else { state = 10;	process = 0;	delay = 120; sc_cBoss1AtkNext(); }
		
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
		else if (ran < 8)	{ return 14; }
		else				{ return 16; }
	}
	else if (index == 14) {	
		if (ran < 4)		{ return 14; }
		else if (ran < 8)	{ return 13; }
		else				{ return 16; }
	}
	else if (index == 16) {	
		if (ran < 6)		{ return 13; }
		else				{ return 14; }
	}
	else {
		return 13;
	}

}