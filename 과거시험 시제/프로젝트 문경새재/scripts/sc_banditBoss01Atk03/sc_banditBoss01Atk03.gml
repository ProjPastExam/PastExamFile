// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_banditBoss01Atk03(){
	process++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_banditBoss01_atk03;
	var plX = sc_pl_get("x");
	if ( process == 1 ) {
		if ( x < plX )	dir = 1;
		else			dir = -1;
	}
	if ( process == 48 ) {
		var atk = instance_create_depth(x, y, depth-1, ob_BossBandit01Atk02);
		atk.image_xscale = dir;
		audio_play_sound(s_bandit02atk2, 8, false);
	}
	
	if ( process < 6 )		{ image_index = 0; }
	else if ( process < 12 )	{ image_index = 1; }
	else if ( process < 18 )	{ image_index = 2; }
	else if ( process < 24 )	{ image_index = 3; }
	else if ( process < 30 )	{ image_index = 4; }
	else if ( process < 48 )	{ image_index = 5; }
	else if ( process < 78 )	{ image_index = 6; xSpeed = dir * 1.5 * (78-process); }
	else { state = 10;	process = 0;	delay = random_range(50, 70); }
}