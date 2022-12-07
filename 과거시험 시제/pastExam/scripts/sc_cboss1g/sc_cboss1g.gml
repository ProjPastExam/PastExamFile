// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cBoss1G(){
	with (ob_cB1) {
		other.tgX = x - dir*100;
		other.tgY = y;
		other.dir = dir;
	}
	isAtk = false; 
	
	//dist = sqrt(power(tgX-x, 2) * power(tgY-y, 2));
	var moveX = (tgX - x)/2;
	var moveY = (tgY - y)/2;
	
	if (moveX > 24)		moveX = 24;
	if (moveX < -24)	moveX = -24;
	if (moveY > 24)		moveY = 24;
	if (moveY < -24)	moveY = -24;
	
	x += moveX;
	y += moveY;
	
	if (state == 0) {
		sprite_index = sp_cB1G_stand
		image_xscale = dir;
	}
	
	else if (state == 1) {
		process++;
		sprite_index = sp_cB1G_atk1;
		if ( process == 112 ) { 
			SE_Play(s_cB1_atkG, global.vol);
		}
		
		if ( process == 128 ) { 
			//SE_Play(s_swing_b1, global.vol);
		}

		if (process < 8) { image_index = 0; }
		else if (process < 16)	{ image_index = 1; }
		else if (process < 24)	{ image_index = 2; }
		else if (process < 32)	{ image_index = 3; }
		else if (process < 40)	{ image_index = 4; }
		else if (process < 48)	{ image_index = 5; }
		else if (process < 56)	{ image_index = 6; }
		else if (process < 64)	{ image_index = 7; }
		else if (process < 72)	{ image_index = 8; }
		else if (process < 80)	{ image_index = 9; }
		else if (process < 86)	{ image_index = 10; }
		else if (process < 92)	{ image_index = 11; }
		else if (process < 98)	{ image_index = 12; }
		else if (process < 104)	{ image_index = 13; }
		else if (process < 110)	{ image_index = 14; }
		else if (process < 116)	{ image_index = 15; }
		else if (process < 122)	{ image_index = 16; }
		else if (process < 128)	{ image_index = 17; }
		else if (process < 134)	{ image_index = 18;	isAtk = true; }
		else if (process < 140)	{ image_index = 19; }
		else if (process < 146)	{ image_index = 20; }
		else if (process < 152)	{ image_index = 21; }
		else { process = 0;	state = 0; }
	}
	
	else if (state == 2) {
		process++;
		sprite_index = sp_cB1G_atk2;
		
		if ( process == 26 ) { 
			SE_Play(s_cB1_atkG, global.vol);
		}
		
		if ( process == 128 ) { 
			//SE_Play(s_swing_b1, global.vol);
		}

		if (process < 6) { image_index = 0; }
		else if (process < 12)	{ image_index = 1; }
		else if (process < 18)	{ image_index = 2; }
		else if (process < 24)	{ image_index = 3; }
		else if (process < 30)	{ image_index = 4; }
		else if (process < 36)	{ image_index = 5; }
		else if (process < 42)	{ image_index = 6; }
		else if (process < 48)	{ image_index = 7;	isAtk = true; }
		else if (process < 54)	{ image_index = 8;	isAtk = true; }
		else if (process < 60)	{ image_index = 9;	isAtk = true; }
		else if (process < 66)	{ image_index = 10; }
		else if (process < 72)	{ image_index = 11; }
		else if (process < 78)	{ image_index = 12; }
		else { process = 0;	state = 0; }
	}
	
	else if (state == 3) {
		process++;
		sprite_index = sp_cB1G_counter;
		
		if ( process == 20 ) { 
			SE_Play(s_cB1_atkG, global.vol);
		}
		
		if ( process == 128 ) { 
			//SE_Play(s_swing_b1, global.vol);
		}

		if (process < 6) { image_index = 0; }
		else if (process < 12)	{ image_index = 1; }
		else if (process < 18)	{ image_index = 2; }
		else if (process < 24)	{ image_index = 3; }
		else if (process < 30)	{ image_index = 4; }
		else if (process < 36)	{ image_index = 5; }
		else if (process < 42)	{ image_index = 6; isAtk = true; }
		else if (process < 48)	{ image_index = 7; isAtk = true; }
		else if (process < 54)	{ image_index = 8; }
		else if (process < 60)	{ image_index = 9; }
		else if (process < 66)	{ image_index = 10; }
		else if (process < 72)	{ image_index = 11; }
		else if (process < 78)	{ image_index = 12; }
		else { process = 0;	state = 0; }
	}
}