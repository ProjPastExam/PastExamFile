// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_badditBoss01Atk01(){
	process++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_banditBoss01_atk01;
	var plX = sc_pl_get("x");
	if ( process == 1 || process == 74 ) {
		if ( x < plX )	dir = 1;
		else			dir = -1;
	}
	
	if ( process == 34 || process == 102 ) {
		var atk = instance_create_depth(x, y, depth-1, ob_BossBandit01Atk01);
		atk.image_xscale = dir;
		audio_play_sound(s_bandit02atk2, 8, false);
	}
	
	if ( process == 59 ) {
		var atk = instance_create_depth(x + 40*dir, y+10, depth+1, ob_BossBandit01Atk01);
		atk.image_xscale = dir;
		audio_play_sound(s_bandit02atk2, 8, false);
	}
	
	
	if ( process < 6 )		{ image_index = 0; }
	else if ( process < 12 )	{ image_index = 1; }
	else if ( process < 18 )	{ image_index = 2; }
	else if ( process < 24 )	{ image_index = 3; }
	else if ( process < 30 )	{ image_index = 4; }
	else if ( process < 34 )	{ image_index = 4; xSpeed = dir*40; }
	else if ( process < 49 )	{ image_index = 5; }
	else if ( process < 55 )	{ image_index = 6; }
	else if ( process < 59 )	{ image_index = 6; xSpeed = dir*40; }
	else if ( process < 74 )	{ image_index = 7; }
	else if ( process < 80 )	{ image_index = 0; }
	//else if ( process < 86 )	{ image_index = 1; }
	else if ( process < 98 )	{ image_index = 4; }
	else if ( process < 102 )	{ image_index = 4; xSpeed = dir*65; }
	else if ( process < 126 )	{ image_index = 5; }
	else process = 0;
}