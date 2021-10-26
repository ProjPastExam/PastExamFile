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
	
	if (isJump) ySpeed += 0.3;
	
	isDA = true;	isDK = false;	isDF = false;
	
	
	
	var plX = sc_pl_get("x");
	var plY = sc_pl_get("y");
	if ( state == 10 ) {
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			// 11 14 15 18
			var ran = random_range(0, 10);
			if (bsPt == 0) {
				if (ran < 5) { state = 12; bsPt = 1; }
				else { state = 14; bsPt = 2; }
			}
			else if (bsPt == 1) {
				{ state = 14; bsPt = 2; }
			}
			else if (bsPt == 2) {
				if (ran < 3) {state = 15; bsPt = 3;}
				else {state = 18; bsPt = 4;}
			}
			else if (bsPt == 3) {
				if (ran < 4) {state = 11; bsPt = 0;}
				else if (ran < 5) {state = 15; bsPt = 3;}
				else {state = 18; bsPt = 4;}
			}
			else {
				if (ran < 5) { state = 11; bsPt = 0; }
				else if (ran < 9) { state = 15; bsPt = 3; }
				else { state = 18; bsPt = 4; }
			}
			
		}
		
	}
	else if ( state == 11 ){
		sprite_index = sp_banditBoss_walk;
		if ( plX < x + 600 && plX > x - 600 && (left1 != 3 && right1 != 3)) {
			process = 0;
			state = 13;
		}
		else if ( plX > x + 850 ) {
			dir = 1;
			xSpeed = runSpeed-4;
		}
		else if ( plX < x - 850 ) {
			dir = -1;
			xSpeed = -runSpeed+4;
		}
		else {
			process = 0;
			state = 12;
		}
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
		
	}
	else if ( state == 12 ) {
		process++;
		sprite_index = sp_banditBoss_atk1;
		xSpeed = 0;
		
		if ( process == 1 ) { audio_play_sound(s_bandit02atk1, 8, false); }
		
		if ( process == 25 ) { 
			audio_play_sound(s_bandit02atk2, 8, false);
			var axe = array_create(3);
			
			axe[1] = instance_create_layer(x-(10*dir), y, "effect", ob_mobBandit02Atk);
			axe[2] = instance_create_layer(x-(10*dir), y, "effect", ob_mobBandit02Atk);
			axe[3] = instance_create_layer(x-(10*dir), y, "effect", ob_mobBandit02Atk);
			
			if ( x > plX ) {
				axe[1].dir = -1;	axe[2].dir = -1;	axe[3].dir = -1;
			}
			else {
				axe[1].dir = 1;		axe[2].dir = 1;		axe[3].dir = 1;
			}
			var xs = (plX-x)/80;
			if (xs*dir > 0) {
				axe[1].xSpeed = xs;			axe[2].xSpeed = xs+(2*dir);	axe[3].xSpeed = xs+(4*dir);
			}
			else {
				axe[1].xSpeed = 3 * dir;	axe[2].xSpeed = 5 * dir;	axe[3].xSpeed = 7 * dir;
			}
			var ys = abs(xs) - 30 + (plY - y)/60;
			axe[1].ySpeed = ys;		axe[2].ySpeed = ys;		axe[3].ySpeed = ys;
			
		}
		
		
		if ( process < 25 ) { image_index = 0; }
		else if ( process < 30 ) { image_index = 1; }
		else if ( process < 37 ) { image_index = 2; }
		else { state = 10;	process = 0; delay = 10; }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_banditBoss_stand1;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 16 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 28 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 31 ) { image_index = 3; }
		else if ( process < 34 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_banditBoss_atk2;
		xSpeed = 0;
		
		if ( process == 1 ) { audio_play_sound(s_jp_dAtk, 8, false); }
		
		if ( process == 100 ) { 
			audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_atk2Ef;
		}
		
		
		if ( process < 60 ) { image_index = 0; isDK = false; isDF = false; }
		else if ( process < 90 ) { 
			xSpeed = dir * 24;
			if (process % 6 == 0) {
				if (image_index == 1) image_index = 2;
				else image_index = 1;
			}
			if (abs(plX-x) < 100 && process > 68) { process = 90; }
		}
		else if ( process < 95 ) { image_index = 3; xSpeed = 10*dir; }
		else if ( process < 100 ) { image_index = 4; xSpeed = 5*dir; }
		else if ( process < 105 ) { image_index = 5; }
		else if ( process < 110 ) { image_index = 6; }
		else if ( process < 125 ) { image_index = 7; }
		else { state = 10;	process = 0;	delay = random_range(60, 80); }
	}
	
	else if ( state == 15 ) {
		sprite_index = sp_banditBoss_run;
		if ( plX < x + 240 && plX > x - 240 && (left1 != 3 && right1 != 3)) {
			process = 0;
			state = 17;
		}
		else if ( plX > x + 600 ) {
			dir = 1;
			xSpeed = runSpeed;
		}
		else if ( plX < x - 600 ) {
			dir = -1;
			xSpeed = -runSpeed;
		}
		else {
			process = 0;
			state = 16;
		}
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
	}
	
	else if ( state == 16 ) {
		process++;
		sprite_index = sp_banditBoss_atk3;
		xSpeed = 0;
		
		isDK = true;
		
		if ( process == 1 ) { audio_play_sound(s_jp_dAtk, 8, false); }
		
		if ( process == 55 ) { 
			audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_atk3Ef1;
		}
		
		if ( process == 90 ) { 
			audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_atk3Ef1;
		}
		
		if ( process == 140 ) { 
			audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_banditBoss_atk3Ef3;
			uc_shake(8, 0.08);
		}
		
		
		if ( process < 40 ) { image_index = 0; isDF = false; }
		else if ( process < 55 ) { image_index = 1; xSpeed = dir * 12; isDF = false;}
		else if ( process < 60 ) { image_index = 2; xSpeed = dir * 4;}
		else if ( process < 70 ) { image_index = 3;}
		else if ( process < 75 ) { image_index = 4; xSpeed = dir * 4;}
		else if ( process < 90 ) { image_index = 4; xSpeed = dir * 12;}
		else if ( process < 95 ) { image_index = 6; xSpeed = dir * 4;}
		else if ( process < 105 ) { image_index = 7;}
		else if ( process < 115 ) { image_index = 8; xSpeed = dir * 2;}
		else if ( process < 120 ) { image_index = 9; xSpeed = dir * 4;}
		else if ( process < 125 ) { image_index = 9; xSpeed = dir*15; }
		else if ( process < 135 ) { image_index = 10; xSpeed = dir*18; }
		else if ( process < 140 ) { image_index = 10; xSpeed = dir*24; }
		else if ( process < 145 ) { image_index = 11; }
		else if ( process < 160 ) { image_index = 12; }
		else { state = 10;	process = 0;	delay = random_range(90, 120); }
	}
	
	else if ( state == 17 ) {
		process++;
		sprite_index = sp_banditBoss_stand1;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 14 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 22 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 25 ) { image_index = 3; }
		else if ( process < 28 ) { image_index = 4; }
		else { state = 16;	process = 0;	delay = 0; }
	}
	
	else if ( state == 18 ) {
		sprite_index = sp_banditBoss_run;
		if ( plX < x + 250 && plX > x - 250 && (left1 != 3 && right1 != 3)) {
			process = 0;
			state = 20;
		}
		else if ( plX > x + 350 ) {
			dir = 1;
			xSpeed = runSpeed;
		}
		else if ( plX < x - 350 ) {
			dir = -1;
			xSpeed = -runSpeed;
		}
		else {
			process = 0;
			state = 19;
		}
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
	}
	
	else if ( state == 19 ) {
		process++;
		sprite_index = sp_banditBoss_atk4;
		xSpeed = 0;
		
		isDK = true;	isDF = true;
		
		if ( process == 1 ) { audio_play_sound(s_jp_dAtk, 8, false); }
		
		if ( process == 55 || process == 85 || process == 115 || process == 145) { 
			audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			if (process == 55) ob.sprite_index = sp_banditBoss_atk4Ef1;
			else if (process == 85) ob.sprite_index = sp_banditBoss_atk4Ef2;
			else if (process == 115) ob.sprite_index = sp_banditBoss_atk4Ef3;
			else if (process == 145) ob.sprite_index = sp_banditBoss_atk4Ef4;
		}
		
		
		if ( process < 40 ) { image_index = 0; }
		else if ( process < 50 ) { image_index = 0; xSpeed = dir*6; }
		else if ( process < 55 ) { image_index = 1; xSpeed = dir*12; }
		else if ( process < 60 ) { image_index = 2; xSpeed = dir*6 }
		else if ( process < 70 ) { image_index = 3; }
		
		else if ( process < 80 ) { image_index = 4; xSpeed = dir*6; }
		else if ( process < 85 ) { image_index = 5; xSpeed = dir*12; }
		else if ( process < 90) { image_index = 6; xSpeed = dir*6; }
		else if ( process < 100 ) { image_index = 7; }
		
		else if ( process < 110 ) { image_index = 8; xSpeed = dir*6; }
		else if ( process < 115) { image_index = 9; xSpeed = dir*12; }
		else if ( process < 120 ) { image_index = 10; xSpeed = dir*6; }
		else if ( process < 130 ) { image_index = 11; }
		
		else if ( process < 140 ) { image_index = 12; xSpeed = dir*6; }
		else if ( process < 145 ) { image_index = 13; xSpeed = dir*12; }
		else if ( process < 150 ) { image_index = 14; xSpeed = dir*6; }
		else if ( process < 165 ) { image_index = 15; }
		else { state = 10;	process = 0; delay = random_range(50, 80); }
	}
	
	else if ( state == 20 ) {
		process++;
		sprite_index = sp_banditBoss_stand1;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*18*-1; }
		else if ( process < 16 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 20 ) { image_index = 3; }
		else if ( process < 23 ) { image_index = 4; }
		else { state = 19;	process = 0;	delay = 0; }
	}
}