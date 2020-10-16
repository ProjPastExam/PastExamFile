// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atk;
	
	if ( atkProcess > 6 && atkProcess < 26 && keyAttack ) nextAtk = 1;
	if ( atkProcess > 38 && atkProcess < 58 && keyAttack ) {
		if ( keyDown ) 													nextAtk = 5;
		else if ( keyTop ) 												nextAtk = 6;
		else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
		else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
		else															nextAtk = 2;
	}
	if ( atkProcess == 14 || (atkProcess == 32 && image_index == 5) ) {
		instance_create_layer(x, y, "effect", ob_atkEf01);
		ob_atkEf01.image_xscale = dir;
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 14 )	{ image_index = 1; }
	else if ( atkProcess < 20 )	{ image_index = 2; }
	else if ( atkProcess < 26 )	{
		if ( nextAtk != 1 ) { image_index = 3; }
		else				{ image_index = 4; }
	}
	else if ( atkProcess < 32 )	{ 
		if ( image_index != 3 )	{ image_index = 5; nextAtk = 0; }
		}
	else if ( atkProcess < 40 )	{ 
		if ( image_index == 3 ) { atkProcess = -5; canMove = 0; }
		else					{ image_index = 6; }
		}
	else if ( atkProcess < 46 )	{ image_index = 7; }
	else if ( atkProcess < 52 )	{ image_index = 8; }
	else if ( atkProcess < 58 ) { 
		if ( nextAtk == 2 ) { nextAtk = 0; atkProcess = 0; canMove = 2; }
		if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 4; }
		if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; }
		if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
	}
	else { atkProcess = -5;	canMove = 0; }
}