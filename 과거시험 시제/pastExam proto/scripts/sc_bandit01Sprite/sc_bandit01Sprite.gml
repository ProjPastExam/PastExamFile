// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit01Sprite(){
	image_xscale = dir;
	switch (state) {
	case 0:
		sprite_index = sp_bandit01_stand;
		break;
	case 1:
		sprite_index = sp_bandit01_walk;
		break;
	case 5:
	case 6:
	case 7:
		sprite_index = sp_bandit01_pain;
		break;
	
	case 10:
		sprite_index = sp_bandit01_stand2;
		break;
	
	case 11:
		sprite_index = sp_bandit01_run;
		break;
	case 30:
		sprite_index = sp_bandit01_dig;
		break;
	case 31:
		sprite_index = sp_bandit01_stand;
		break;
	case 32:
		sprite_index = sp_bandit01_stand2;
		break;
	}
}