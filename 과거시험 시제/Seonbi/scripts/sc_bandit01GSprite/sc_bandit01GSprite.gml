// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit01GSprite(){
	image_xscale = dir;
	switch (state) {
	case 0:
		sprite_index = sp_bandit01G_stand;
		break;
	case 1:
		sprite_index = sp_bandit01G_walk;
		break;
	case 5:
	case 6:
	case 7:
	case 8:
		sprite_index = sp_bandit01G_pain;
		break;
	
	case 10:
		sprite_index = sp_bandit01G_stand2;
		break;
	
	case 11:
		sprite_index = sp_bandit01G_run;
		break;
	}
}