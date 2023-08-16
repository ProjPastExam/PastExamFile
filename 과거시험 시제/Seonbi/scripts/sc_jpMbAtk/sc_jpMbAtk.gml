// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpMbAtk(){
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
	
	//if ( state == 12 || state == 14 ) { isDA = true; isDK = true; }
	//else { isDA = false; isDK = false; }
	
	
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			var ran = random_range(0, 10);
			if (bsPt == 0) {
				if (ran < 2) { state = 11; bsPt = 0; }
				else if (ran < 7) { state = 15; bsPt = 1; }
				else { state = 17; bsPt = 2; }
			}
			else if (bsPt == 1) {
				if (ran < 4) { state = 11; bsPt = 0; }
				else if (ran < 6) { state = 15; bsPt = 1; }
				else { state = 17; bsPt = 2; }
			}
			else {
				if (ran < 5) { state = 11; bsPt = 0; }
				else if (ran < 9) { state = 15; bsPt = 1; }
				else { state = 17; bsPt = 2; }
			}
			
		}
		
	}
	else if ( state == 11 ){
		if ( plX < x + 240 && plX > x - 240 && (left1 != 3 && right1 != 3)) {
			process = 0;
			state = 13;
		}
		else if ( plX > x + 400 ) {
			dir = 1;
			xSpeed = runSpeed;
		}
		else if ( plX < x - 400 ) {
			dir = -1;
			xSpeed = -runSpeed;
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
		sprite_index = sp_jpMb_atk1_1;
		xSpeed = 0;
		
		isDK = true;	isDF = true;
		
		if ( process == 1 ) { SE_Play(s_jp_eAtk, global.vol); }
		if ( process == 57 ) { 
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpMb_atk1_1Ef;
		}
		
		
		if ( process < 45 ) { image_index = 0; }
		else if ( process < 49 ) { image_index = 1; xSpeed = dir*20; }
		else if ( process < 53 ) { image_index = 1; xSpeed = dir*22; }
		else if ( process < 57 ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 62 ) { image_index = 2; }
		else if ( process < 70 ) { image_index = 3; }
		else { state = 14;	process = 0; }
	}
	
	else if ( state == 13 ) {
		process++;
		sprite_index = sp_jpMb_backStep;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; xSpeed = dir*16*-1; }
		else if ( process < 14 ) { image_index = 2; xSpeed = dir*12*-1; }
		else if ( process < 18 ) { image_index = 3; }
		else if ( process < 24 ) { image_index = 4; }
		else { state = 12;	process = 0;	delay = 0; }
	}
	
	else if ( state == 14 ) {
		process++;
		sprite_index = sp_jpMb_atk1_2;
		xSpeed = 0;
		
		isDK = true;	isDF = true;
		
		if ( process == 10 ) { 
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpMb_atk1_2Ef;
		}
		
		
		if ( process < 5 ) { image_index = 0; }
		else if ( process < 10 ) { image_index = 1; }
		else if ( process < 15 ) { image_index = 2; }
		else if ( process < 40 ) { image_index = 3; }
		else { state = 10;	process = 0;	delay = random_range(60, 80); }
	}
	
	else if ( state == 15 ) {
		sprite_index = sp_jpMb_run;
		if ( plX > x + 500 ) {
			dir = 1;
			xSpeed = runSpeed;
		}
		else if ( plX < x - 500 ) {
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
		sprite_index = sp_jpMb_atk2;
		xSpeed = 0;
		
		isDK = true;
		
		if ( process == 1 ) { SE_Play(s_jp_dAtk, global.vol); }
		
		if ( process == 75 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpMb_atk2_1Ef;
		}
		
		if ( process == 110 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpMb_atk2_2Ef;
		}
		
		
		if ( process < 60 ) { image_index = 0; }
		else if ( process < 75 ) { image_index = 1; xSpeed = dir * 16; }
		else if ( process < 80 ) { image_index = 2; xSpeed = dir * 12;}
		else if ( process < 85 ) { image_index = 3; xSpeed = dir * 6;}
		else if ( process < 95 ) { image_index = 4; xSpeed = dir * 12;}
		else if ( process < 105 ) { image_index = 5; xSpeed = dir * 16;}
		else if ( process < 110 ) { image_index = 6; xSpeed = dir * 12;}
		else if ( process < 115 ) { image_index = 7; xSpeed = dir * 6;}
		else if ( process < 140 ) { image_index = 8; }
		else { state = 10;	process = 0;	delay = random_range(75, 105); }
	}
	
	else if ( state == 17 ) {
		sprite_index = sp_jpMb_run;
		if ( plX < x + 580 && plX > x - 580 && (left1 != 3 && right1 != 3)) {
			process = 0;
			state = 20;
		}
		else if ( plX > x + 700 ) {
			dir = 1;
			xSpeed = runSpeed;
		}
		else if ( plX < x - 700 ) {
			dir = -1;
			xSpeed = -runSpeed;
		}
		else {
			process = 0;
			state = 18;
		}
		if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)))	
			{ ySpeed = -15; }
		if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )))
			{ ySpeed = -15; }
	}
	
	else if ( state == 18 ) {
		process++;
		sprite_index = sp_jpMb_atk3_1;
		xSpeed = 0;
		isDF = true;
		
		if ( process == 1 ) { SE_Play(s_jp_dAtk, global.vol); }
		
		if ( process == 82 ) { 
			SE_Play(s_swing_a1, global.vol);
			//audio_play_sound(s_swing_a1, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpMb_atk1_1Ef;
		}
		
		
		if ( process < 70 ) { image_index = 0; isDF = false; isDK = false; }
		else if ( process < 74 ) { image_index = 1; xSpeed = dir*12; isDF = false; isDK = false; }
		else if ( process < 79 ) { image_index = 1; xSpeed = dir*15 isDF = false; isDK = false;; }
		else if ( process < 82 ) { image_index = 1; xSpeed = dir*20; isDF = false; isDK = false; }
		else if ( process < 86 ) { image_index = 2; xSpeed = dir*12; }
		else if ( process < 89 ) { image_index = 3; xSpeed = dir*6; }
		else { state = 19;	process = 0; }
	}
	
	else if ( state == 19 ) {
		process++;
		sprite_index = sp_jpMb_atk3_2;
		xSpeed = 0;
		isDF = true;
		
		//if ( process == 1 ) { audio_play_sound(s_jp_dAtk, 8, false); }
		
		if ( process == 24 ) { 
			SE_Play(s_swing_a2, global.vol);
			//audio_play_sound(s_swing_a2, 8, false);
			var ob = instance_create_layer(x, y, "effect", ob_mobAtk);
			ob.image_xscale = dir;
			ob.sprite_index = sp_jpMb_atk3Ef;
			uc_shake(8, 0.08);
		}
		
		
		if ( process < 4 ) { image_index = 0; xSpeed = dir*8; }
		else if ( process < 8 ) { image_index = 1; xSpeed = dir*18; }
		else if ( process < 16 ) { image_index = 2; xSpeed = dir*21; }
		else if ( process < 24 ) { image_index = 3; xSpeed = dir*25; }
		else if ( process < 28 ) { image_index = 4; }
		else if ( process < 65 ) { image_index = 5; }
		else { state = 10;	process = 0; delay = random_range(90, 120); }
	}
	
	else if ( state == 20 ) {
		process++;
		sprite_index = sp_jpMb_backStep;
		
		isDK = true;	isDF = true;
		
		if ( process < 4 ) { image_index = 0; }
		else if ( process < 12 ) { image_index = 1; xSpeed = dir*20*-1; }
		else if ( process < 20 ) { image_index = 2; xSpeed = dir*10*-1; }
		else if ( process < 25 ) { image_index = 3; }
		else if ( process < 30 ) { image_index = 4; }
		else { state = 18;	process = 0;	delay = 0; }
	}
}