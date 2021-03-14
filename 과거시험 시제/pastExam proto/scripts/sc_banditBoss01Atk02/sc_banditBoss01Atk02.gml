// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_banditBoss01Atk02(){
	process++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_banditBoss01_atk02;
	var plX = sc_pl_get("x");
	if ( process == 1 ) {
		if ( x < plX )	dir = 1;
		else			dir = -1;
	}
	if ( process == 20 ) {
		ySpeed = -16;
		xS = (plX - x + 100*dir) / 40;
	}
	if ( process == 501 ) {
		var atk = instance_create_layer(x, y, "effect", ob_BossBandit01Atk03);
		atk.image_xscale = dir;
		audio_play_sound(s_bandit02atk2, 8, false);
	}
	if (process > 20 && process < 500) {
		if (collision_rectangle(x-30,y-50, x+30, y+80, ob_player, true, false)) {sc_pl_hit(0);}
	}
	
	if ( process < 12 )		{ image_index = 0; }
	else if ( process < 20 )	{ image_index = 1; }
	else if ( process < 28 )	{ image_index = 2; ySpeed += 0.2; }
	else if ( process < 500 )	{ image_index = (process/6)%2+3; ySpeed += 0.2; }
	if ( isJump )				{ xSpeed = xS; }
	else if ( process < 500 && process > 28 )	{ process = 500; }
	if ( process < 505 ) { if ( process > 500 ) image_index = 5 }
	else if ( process < 525 )	{ image_index = 6; }
	else { state = 10;	process = 0;	delay = random_range(50, 70); }
	
}