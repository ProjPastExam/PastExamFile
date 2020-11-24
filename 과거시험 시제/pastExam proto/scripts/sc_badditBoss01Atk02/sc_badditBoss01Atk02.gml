// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_badditBoss01Atk02(){
	process++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_banditBoss01_atk02;
	var plX = sc_pl_get("x");
	if ( process == 1 ) {
		if ( x < plX )	dir = 1;
		else			dir = -1;
	}
	if ( process == 11 ) {
		ySpeed = -24;
		xS = (plX - x - dir*180) / 60;
	}
	
	if ( process < 10 )		{ image_index = 0; }
	else if ( process < 16 )	{ image_index = 1; ySpeed += 0.2; }
	else if ( process < 500 )	{ image_index = 2; ySpeed += 0.2; }
	if ( isJump )				{ xSpeed = xS; }
	else if ( process < 500 && process > 20 )	{ process = 500; }
	if ( process < 505 ) { if ( process > 500 ) image_index = 3 }
	else if ( process < 525 )	{ image_index = 4; }
	else process = 0;
	
}