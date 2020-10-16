// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkBack(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkBack;
	
	if ( atkProcess > 18 && atkProcess < 38 && keyAttack ) {
		if ( keyDown ) 													nextAtk = 5;
		else if ( keyTop ) 												nextAtk = 6;
		else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 7;
		else															nextAtk = 2;
	}
	
	if ( atkProcess == 20 ) {
		instance_create_layer(x, y+10, "effect", ob_atkEf01);
		ob_atkEf01.image_xscale = dir;
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = -16*dir; }
	else if ( atkProcess < 14 )	{ image_index = 1; xSpeed = -12*dir; }
	else if ( atkProcess < 20 )	{ image_index = 2; xSpeed = -8*dir; }
	else if ( atkProcess < 26 )	{ image_index = 3; xSpeed = -4*dir; }
	else if ( atkProcess < 32 )	{ image_index = 4; }
	else if ( atkProcess < 44 ) { 
		if ( nextAtk == 2 ) { atkProcess = 0;	canMove = 2; }
		if ( nextAtk == 5 ) { atkProcess = 0;	canMove = 5; }
		if ( nextAtk == 6 ) { atkProcess = 0;	canMove = 6; }
		if ( nextAtk == 7 ) { atkProcess = 0;	canMove = 7; }
	}
	else { canMove = 0;	atkProcess = -5; }
}