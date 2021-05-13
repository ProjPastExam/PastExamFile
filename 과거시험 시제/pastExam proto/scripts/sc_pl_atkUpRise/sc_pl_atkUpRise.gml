// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkUpRise(){
	
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_frontKick;
	
	if ( atkProcess == 1 && isJump ) { canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess > 16 ) {
		if ( keyAttack ) {
			if ( keyDown ) 													nextAtk = 5;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 2;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	
	if (atkProcess == 12) { dmgBuff = (itemRise+5)/10; dmgBuffT = 90; }
	
	//대쉬 제어
	if ( (atkProcess > 16) ) 
		if ( keyDash ) nextAtk = 10;

		
	if ((atkProcess > 24) ) {
		if ( nextAtk == 10 ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	
	if ( atkProcess < 4 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 8 )	{ image_index = 1; isImort = true; }
	else if ( atkProcess < 12 )	{ image_index = 2; isImort = true; ySpeed = -25; }
	else if ( atkProcess < 18 )	{ image_index = 3; isImort = true; }
	else if ( atkProcess < 24 )	{ image_index = 3; isImort = true; }
	else if ( atkProcess < 36 )	{ image_index = 4;
		if ( nextAtk == 2 ) { nextAtk = 0; atkProcess = 0; canMove = 2; }
		if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
		if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; }
		if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; }
		if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; }
		if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
	
}