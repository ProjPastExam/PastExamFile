// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_dash(){
	if (dProcess == 0) audio_play_sound(s_dash01, false, false);
	dProcess++;
	sprite_index = sp_pl_dash;
	image_xscale = dir;
	xSpeed = 30*dir*(18-dProcess)/14;
	ySpeed = 0;
	if ( dProcess > 14 ) { canMove = 0; dProcess = -30; }
}