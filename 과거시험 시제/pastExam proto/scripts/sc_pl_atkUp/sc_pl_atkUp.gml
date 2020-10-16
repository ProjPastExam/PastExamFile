// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkUp(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkUp;
	
	if ( atkProcess > 38 && atkProcess < 58 && keyAttack ) {
		if ( keyDown ) 	nextAtk = 5;
	}
	
	if ( atkProcess == 6 ) {
		instance_create_layer(x, y, "effect", ob_atkEf04);
		ob_atkEf04.image_xscale = dir;
	}
	
	if ( atkProcess == 36 ) {
		instance_create_layer(x, y, "effect", ob_atkEf02);
		if ( dir == 1 )		ob_atkEf02.image_angle = 30;
		if ( dir == -1 )	ob_atkEf02.image_angle = 150;
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; xSpeed = -2*dir; }
	else if ( atkProcess < 18 )	{ image_index = 2; xSpeed = -4*dir; }
	else if ( atkProcess < 24 )	{ image_index = 3; xSpeed = -2*dir }
	else if ( atkProcess < 36 )	{ image_index = 4; }
	else if ( atkProcess < 42 )	{ image_index = 5; }
	else if ( atkProcess < 48 )	{ image_index = 6; }
	else if ( atkProcess < 52 )	{ image_index = 7; }
	else if ( atkProcess < 60 ) { 
		if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
}