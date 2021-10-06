// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit03Sprite(){
	image_xscale = dir;
	switch (state) {
	case 0:
		sprite_index = sp_bandit03_stand;
		break;
	case 1:
		sprite_index = sp_bandit03_walk;
		break;
	case 5:
	case 6:
	case 7:
	case 8:
		sprite_index = sp_bandit03_pain;
		break;
	
	case 10:
		sprite_index = sp_bandit03_stand2;
		break;
	
	case 11:
		sprite_index = sp_bandit03_run;
		break;
	}
}