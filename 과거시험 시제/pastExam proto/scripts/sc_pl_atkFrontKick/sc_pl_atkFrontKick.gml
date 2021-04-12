// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFrontKick(){
	
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_frontKick;
	var atk;
	if ( atkProcess > 24 && atkProcess < 44 ) {
		if (keyAttack) {
			if ( keyDown ) 		nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if ( atkProcess > 57 && atkProcess < 77 ) {
		if (keyAttack) {
			if ( keyDown ) 		nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if ( atkProcess == 6 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 8;
		atk.shock = 30;
		atk.pene = 0;
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 27 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 10;
		atk.shock = 30;
		atk.pene = 0;
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
	}
	
	if ( atkProcess == 57 ) {
		atk = instance_create_layer(x, y, "effect", ob_atkEf03);
		atk.damage = 10;
		atk.shock = 30;
		atk.pene = 0;
		atk.hitAfter = 15;
		atk.sprite_index = sp_pl_atkEf03;
		atk.image_xscale = dir;
		audio_play_sound(s_kick01, 5, false);
	}
	
	//대쉬 제어
	if ( (atkProcess > 24 && atkProcess < 44) ) 
		if ( keyDash ) nextAtk = 10;
	
	if ( (atkProcess > 57 && atkProcess < 77) ) 
		if ( keyDash ) nextAtk = 10;
		
	if ( (atkProcess > 62 && atkProcess < 77) || (atkProcess > 29 && atkProcess < 44) ) {
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = 16*dir; }
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = 8*dir; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = 4*dir; }
	else if ( atkProcess < 24 )	{ image_index = 3; nextAtk = 0; xSpeed = 12*dir; }
	else if ( atkProcess < 27 )	{ image_index = 4; xSpeed = 16*dir; }
	else if ( atkProcess < 33 )	{ image_index = 5; xSpeed = 12*dir; }
	else if ( atkProcess < 39 )	{ image_index = 6; xSpeed = 8*dir; }
	else if ( atkProcess < 44 )	{ image_index = 7; xSpeed = 4*dir; 
		if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		if (nextAtk == 4)	{ canMove = 4;	atkProcess = 0; }
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
		if (nextAtk == 0)	{ canMove = 0;	atkProcess = -5; }
	}
	else if ( atkProcess < 51 )	{ image_index = 8; }
	else if ( atkProcess < 57 )	{ image_index = 9; xSpeed = 16*dir; }
	else if ( atkProcess < 63 )	{ image_index = 9; xSpeed = 8*dir; }
	else if ( atkProcess < 69 )	{ image_index = 9; xSpeed = 4*dir; }
	else if ( atkProcess < 77 ) {
		if (nextAtk == 2)	{ canMove = 2;	atkProcess = 3; }
		if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		if (nextAtk == 6)	{ canMove = 6;	atkProcess = 0; }
		if (nextAtk == 4)	{ canMove = 4;	atkProcess = 0; }
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
	
}