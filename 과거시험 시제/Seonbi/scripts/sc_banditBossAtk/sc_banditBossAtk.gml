// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_banditBossAtk(){
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var left1	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left-96, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right+96, bbox_top + 16 );
	
	var runSpeed = 10;
	
	if ( delay > 0 ) delay--;
	if ( delay < 0 ) delay = 0;
	
	if (isJump) ySpeed += 0.5;
	
	isDA = true;	isDK = false;	isDF = false;
	
	var plX = sc_pl_get("x");
	var plY = sc_pl_get("y");
	
	if ( state == 10 ) {
		sprite_index = stand2Sp;
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay < 25 ) {
			if (nextState == 13 || nextState == 14 || nextState == 15) {
				if (abs(plX - x) < 450) {
					state = 21;
				}
			}
			else {
				if (abs(plX - x) < 300) {
					state = 20;
				}
			}
		}
		
		if ( delay == 0 ) {
			state = 11;
		}
		
	}
	else if ( state == 11 ){
		
		var atkDistance = 850;
		if (nextState == 15) atkDistance = 1000;
		if (nextState == 16) atkDistance = 700;
		sc_mobRun(10, atkDistance, 0, nextState, nextState, plX, left1, left2, right1, right2);
		/*
		if ( plX > x + atkDistance ) {
			dir = 1;
			xSpeed = runSpeed;
		}
		else if ( plX < x - atkDistance ) {
			dir = -1;
			xSpeed = -runSpeed;
		}
		else {
			process = 0;
			state = nextState;
		}
		
		sprite_index = sp_banditBoss_run;
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
		*/
	}
	
	else if ( state == 13 || state == 14 ) {
		process++;
		sprite_index = sp_banditBoss_atk1;
		xSpeed = 0;
		
		if ( process == 1 ) { 
			SE_Play(s_jp_eAtk, global.vol);
			if (state == 14) process = 20;
		}
		
		if ( process == 30+lvDly/2 ) { 
			SE_Play(s_bandit02atk2, global.vol);
			//audio_play_sound(s_bandit02atk2, 8, false);
			var axe = array_create(4);
			
			axe[1] = instance_create_layer(x+(10*dir), y, "effect", ob_mobBanditBossAxe);
			axe[2] = instance_create_layer(x+(10*dir), y, "effect", ob_mobBanditBossAxe);
			axe[3] = instance_create_layer(x+(10*dir), y, "effect", ob_mobBanditBossAxe);
			
			if ( x > plX ) {
				axe[1].dir = -1;	axe[2].dir = -1;	axe[3].dir = -1;
			}
			else {
				axe[1].dir = 1;		axe[2].dir = 1;		axe[3].dir = 1;
			}
			var xs = (plX-x)/80;
			if (xs*dir > 0) {
				axe[1].xSpeed = xs;			axe[2].xSpeed = xs+(2.5*dir);	axe[3].xSpeed = xs+(5*dir);
			}
			else {
				axe[1].xSpeed = 3 * dir;	axe[2].xSpeed = 5 * dir;	axe[3].xSpeed = 7 * dir;
			}
			var ys = abs(xs) - 30 + (plY - y)/60;
			axe[1].ySpeed = ys;		axe[2].ySpeed = ys;		axe[3].ySpeed = ys;
		}
		
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 8 ) { image_index = 1; }
		else if ( process < 12 ) { image_index = 2; }
		else if ( process < 16 ) { image_index = 3; }
		else if ( process < 20+lvDly/2 ) { image_index = 4; }
		else if ( process < 25+lvDly/2 ) { image_index = 5; }
		else if ( process < 30+lvDly/2 ) { image_index = 6; }
		else if ( process < 35+lvDly/2 ) { image_index = 7; }
		else if ( process < 42+lvDly/2 ) { image_index = 8; }
		else { sc_banditBossAtkNext(state);	state = 10;	process = 0; delay = 10;  }
	}
	
	else if ( state == 15 ) {
		process++;
		sprite_index = sp_banditBoss_atk2;
		xSpeed = 0;
		
		if ( process == 1 ) { SE_Play(s_jp_aAtk, global.vol); }
		
		if ( process == 100 ) { 
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_atk2Ef;
		}
		
		
		if ( process < 6 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; }
		else if ( process < 18 ) { image_index = 2; }
		else if ( process < 24 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else if ( process < 50 ) { image_index = 5; }
		else if ( process < 90 ) { 
			xSpeed = dir * 24;
			if (process % 6 == 0) {
				if (image_index == 6) image_index = 6;
				else image_index = 6;
			}
			if (abs(plX-x) < 180 && process > 68) { process = 90; }
		}
		else if ( process < 95 ) { image_index = 7; xSpeed = 10*dir; }
		else if ( process < 100 ) { image_index = 8; xSpeed = 5*dir; }
		else if ( process < 105 ) { image_index = 9; }
		else if ( process < 110 ) { image_index = 10; }
		else if ( process < 125 ) { image_index = 11; }
		else { sc_banditBossAtkNext(state);	state = 10;	process = 0;	delay = 45+lvDly*2; }
	}
	
	else if ( state == 16 ) {
		process++;
		sprite_index = sp_banditBoss_atk3;
		xSpeed = 0;
		
		isDK = false;	isDF = true;
		isCounter = true;
		
		if ( process == 1 ) { SE_Play(s_jp_dAtk, global.vol); }
		
		if ( process == 70+lvDly || process == 130+lvDly) { 
			uc_shake(8, 0.1);
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_atk3Ef;
		}
		
		if ( process < 6 ) { image_index = 0;}
		else if ( process < 12 ) { image_index = 1;}
		else if ( process < 18 ) { image_index = 2;}
		else if ( process < 24 ) { image_index = 3;}
		else if ( process < 50+lvDly ) { image_index = 4;}
		else if ( process < 54+lvDly ) { image_index = 5; xSpeed = dir * 16;}
		else if ( process < 58+lvDly ) { image_index = 5; xSpeed = dir * 20;}
		else if ( process < 62+lvDly ) { image_index = 5; xSpeed = dir*24; }
		else if ( process < 66+lvDly ) { image_index = 6; xSpeed = dir*20; }
		else if ( process < 70+lvDly ) { image_index = 6; xSpeed = dir*16; }
		else if ( process < 80+lvDly ) { image_index = 7;}
		else if ( process < 95+lvDly ) { image_index = 8;}
		else if ( process < 97+lvDly ) { image_index = 0;}
		else if ( process < 100+lvDly ) { image_index = 1;}
		else if ( process < 102+lvDly ) { image_index = 2;}
		else if ( process < 105+lvDly ) { image_index = 4;}
		else if ( process < 110+lvDly ) { image_index = 5; xSpeed = dir * 16;}
		else if ( process < 115+lvDly ) { image_index = 5; xSpeed = dir * 20;}
		else if ( process < 120+lvDly ) { image_index = 5; xSpeed = dir*24; }
		else if ( process < 125+lvDly ) { image_index = 6; xSpeed = dir*20; }
		else if ( process < 130+lvDly ) { image_index = 6; xSpeed = dir*16; }
		else if ( process < 135+lvDly ) { image_index = 7; }
		else if ( process < 150+lvDly ) { image_index = 8; }
		else { state = 17;	process = 0;	delay = 0; }
	}
	
	else if ( state == 17 ) {
		process++;
		sprite_index = sp_banditBoss_atk3;
		xSpeed = 0;
		
		isDK = false;	isDF = true;
		
		if ( process == 1 ) { 
			SE_Play(s_jp_dAtk, global.vol);
			if ( x > plX ) dir = -1;
			else dir = 1;
		}
		
		if (process > 60 && process < 75 && abs(plX - x) < 100) {
			process = 80;
		}
		
		if ( process == 80 ) { 
			uc_shake(8, 0.1);
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_atk3Ef;
		}
		
		if ( process < 6 ) { image_index = 0;}
		else if ( process < 12 ) { image_index = 1;}
		else if ( process < 18 ) { image_index = 2;}
		else if ( process < 24 ) { image_index = 3;}
		else if ( process < 50 ) { image_index = 4;}
		else if ( process < 55 ) { image_index = 5; xSpeed = dir * 20;}
		else if ( process < 60 ) { image_index = 5; xSpeed = dir * 22;}
		else if ( process < 70 ) { image_index = 5; xSpeed = dir*24; }
		else if ( process < 75 ) { image_index = 6; xSpeed = dir*22; }
		else if ( process < 80 ) { image_index = 6; xSpeed = dir*20; }
		else if ( process < 90 ) { image_index = 7;}
		else if ( process < 105 ) { image_index = 8;}
		else { sc_banditBossAtkNext(state);	isCounter = false;
			state = 10;	process = 0;	delay = 75+lvDly*2; }
	}
	
	else if ( state == 18 ) {
		process++;
		sprite_index = sp_banditBoss_atk4;
		xSpeed = 0;
		
		isDK = true;	isDF = false;
		
		if ( process == 1 ) { SE_Play(s_jp_dAtk, global.vol); }
		
		if ( process == 60+lvDly || process == 90+lvDly || process == 135+lvDly ) { 
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			if (process == 60+lvDly) ob.sprite_index = sp_banditBoss_atk4Ef1;
			else if (process == 90+lvDly) ob.sprite_index = sp_banditBoss_atk4Ef1;
			else if (process == 135+lvDly) {
				ob.sprite_index = sp_banditBoss_atk4Ef3; 
				uc_shake(10, 0.08);
			}
		}
		
		
		if ( process < 40+lvDly ) { image_index = 0; }
		else if ( process < 50+lvDly ) { image_index = 0; xSpeed = dir*12; }
		else if ( process < 60+lvDly ) { image_index = 1; xSpeed = dir*18; }
		else if ( process < 65+lvDly ) { image_index = 2; xSpeed = dir*12; }
		else if ( process < 70+lvDly ) { image_index = 3; xSpeed = dir*6;}
		
		else if ( process < 80+lvDly ) { image_index = 4; xSpeed = dir*12; }
		else if ( process < 90+lvDly ) { image_index = 4; xSpeed = dir*18; }
		else if ( process < 95+lvDly ) { image_index = 6; xSpeed = dir*12; }
		else if ( process < 100+lvDly ) { image_index = 7; xSpeed = dir*6; }
		
		else if ( process < 110+lvDly ) { image_index = 8; xSpeed = dir*6; }
		else if ( process < 115+lvDly ) { image_index = 9; xSpeed = dir*12; }
		else if ( process < 135+lvDly ) { image_index = 10; xSpeed = dir*24; }
		else if ( process < 145+lvDly ) { image_index = 11; }
		else if ( process < 160+lvDly ) { image_index = 12; }
		else { sc_banditBossAtkNext(state);	state = 10;	process = 0;	delay = 75+lvDly*2; }
	}
	
	else if ( state == 20 ) {
		process++;
		sprite_index = sp_banditBoss_backStep;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 16 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 21 ) { image_index = 3; }
		else if ( process < 27 ) { image_index = 4; }
		else { state = nextState;	process = 0;	delay = 0; }
	}
	
	else if ( state == 21 ) {
		process++;
		sprite_index = sp_banditBoss_backStep;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 18 ) { image_index = 1; xSpeed = dir*24*-1; }
		else if ( process < 24 ) { image_index = 2; xSpeed = dir*15*-1; }
		else if ( process < 27 ) { image_index = 3; }
		else if ( process < 32 ) { image_index = 4; }
		else { state = nextState;	process = 0;	delay = 0; }
	}
	
	else if (state == 22) {
		process++;
		sprite_index = sp_banditBoss_counter;
		
		if ( process == 24 ) { SE_Play(s_jp_eAtk, global.vol); }
		
		if ( process == 60+lvDly ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk2);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_counterEf;
		}
		
		isDK = true;	isDF = true;
		if ( process < 24 ) { image_index = 0; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 30 ) { image_index = 1; xSpeed = dir * (process-30)/1.5; }
		else if ( process < 48+lvDly ) { image_index = 1; }
		else if ( process < 54+lvDly ) { image_index = 1; xSpeed = 6 * dir; }
		else if ( process < 60+lvDly ) { image_index = 2; xSpeed = 12 * dir; }
		else if ( process < 67+lvDly ) { image_index = 3; xSpeed = 18 * dir; }
		else if ( process < 72+lvDly ) { image_index = 4; xSpeed = 6 * dir; }
		else if ( process < 84+lvDly ) { image_index = 4; }
		else if ( process < 90+lvDly ) { image_index = 5; }
		else if ( process < 120+lvDly ) { image_index = 6; }
		else if ( process < 132+lvDly ) { image_index = 7; }
		
		
		
		else { state = 10;	process = 0;	delay = 95+lvDly*2;	sc_banditBossAtkNext(nextState); }
		
	}
	
	else if ( state == 5 || state == 6 || state == 7 || state == 8 ) {
		if (isStun) {
			isStun = false;
			state = 22;
			process = 0;
		}
		if (kbIndex == 1) {
			sc_banditBossAtkNext(nextState);
		}
	}
	
	else if ( state == 9 && process == 1) {
		if ( x > plX ) dir = -1;
		else dir = 1;
		
		if (nextState == 13 || nextState == 14 || nextState == 15) {
			state = 21;
		}
		else {
			state = 20;
		}
	}
}


function sc_banditBossAtkNext(index){
	var ran = random_range(0, 10);
	
	if (index == 13) {
		if (ran < 5) { nextState = 14; }
		else { nextState = 15; }
	}
	else if (index == 14) {
		{ nextState = 15; }
	}
	else if (index == 15) {
		if (ran < 7) {nextState = 18;}
		else {nextState = 16;}
	}
	else if (index == 16 || index == 17) {
		if (ran < 7) {nextState = 13;}
		else {nextState = 18;}
	}
	else if (index == 18) {
		if (ran < 3) {nextState = 13;}
		else {nextState = 16;}
	}

}
