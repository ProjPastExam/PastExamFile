// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_badditBoss01Atk01(){
	process++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_banditBoss01_atk01;
	var plX = sc_pl_get("x");
	if ( process == 1 || process == 86 ) {
		if ( x < plX )	dir = 1;
		else			dir = -1;
	}
	
	if ( process < 20 )		{ image_index = 0; }
	else if ( process < 24 )	{ image_index = 1; xSpeed = dir*30; }
	else if ( process < 30 )	{ image_index = 2; }
	else if ( process < 45 )	{ image_index = 3; }
	else if ( process < 60 )	{ image_index = 0; }
	else if ( process < 64 )	{ image_index = 1; xSpeed = dir*30; }
	else if ( process < 70 )	{ image_index = 2; }
	else if ( process < 85 )	{ image_index = 3; }
	else if ( process < 90 )	{ image_index = 0; }
	else if ( process < 115 )	{ image_index = 1; }
	else if ( process < 119 )	{ image_index = 1; xSpeed = dir*45; }
	else if ( process < 125 )	{ image_index = 2; }
	else if ( process < 150 )	{ image_index = 3; }
	else process = 0;
}