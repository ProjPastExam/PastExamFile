// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkFront2(){
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkFront2;
	
	
	if ( atkProcess == 9 ) {
		instance_create_layer(x, y, "effect", ob_atkEf03);
		ob_atkEf03.image_xscale = dir;
	}
	
	if ( atkProcess == 42 ) {
		instance_create_layer(x, y, "effect", ob_atkEf02);
		ob_atkEf02.image_xscale = dir;
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; xSpeed = 10*dir; }
	else if ( atkProcess < 9 )	{ image_index = 1; xSpeed = 12*dir; }
	else if ( atkProcess < 15 )	{ image_index = 2; xSpeed = 10*dir; }
	else if ( atkProcess < 21 )	{ image_index = 3; xSpeed = 6*dir; }
	else if ( atkProcess < 27 )	{ image_index = 4; xSpeed = 4*dir; }
	else if ( atkProcess < 33 )	{ image_index = 5; }
	else if ( atkProcess < 42 )	{ image_index = 6; }
	else if ( atkProcess < 48 )	{ image_index = 7; }
	else if ( atkProcess < 54 )	{ image_index = 8; }
	else if ( atkProcess < 60 )	{ image_index = 9; }

	else	{ canMove = 0;	atkProcess = -5; }
}