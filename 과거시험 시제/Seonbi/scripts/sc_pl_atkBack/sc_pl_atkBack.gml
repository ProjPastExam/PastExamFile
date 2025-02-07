// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkBack(){
atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkBack;
	var atk;
	
	if (keyAttack) {
		if ( keyDown && isJump )										nextAtk = 5;
		else if ( keyTop ) 												nextAtk = 6;
		else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
		else															nextAtk = 2;
	}
	sc_pl_skKey();
	
	if ( atkProcess == 21 ) {
		sc_pl_arrowAtk(1,1);
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
		
	if ( atkProcess > 6 ) {
		sc_pl_atkDnJ();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = -16*dir; }
	else if ( atkProcess < 15 )	{ image_index = 1; xSpeed = -12*dir; }
	else if ( atkProcess < 21 )	{ image_index = 2; xSpeed = -8*dir; }
	else if ( atkProcess < 27 )	{ image_index = 3; xSpeed = -4*dir; }
	else if ( atkProcess < 35 )	{ image_index = 4; }
	else if ( atkProcess < 45 ) { 
		if ( nextAtk == 2 ) { atkProcess = 0;	canMove = 2; }
		else if ( nextAtk == 5 ) { 
			if (isJump)	{ atkProcess = 0;	canMove = 5; }
			else		{ atkProcess = 0;	canMove = 2; }
		}
		else if ( nextAtk == 6 ) { atkProcess = 0;	canMove = 6; }
		else if ( nextAtk == 7 ) { atkProcess = 0;	canMove = 7; }
	}
	else { canMove = 0;	atkProcess = -5; }
	
}