// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_jpMbSprite(){
	image_xscale = dir;
	switch (state) {
	case 0:
		sprite_index = sp_jpMb_stand;
		break;
	case 1:
		sprite_index = sp_jpMb_walk;
		break;
	case 5:
	case 6:
	case 7:
	case 8:
		sprite_index = sp_jpMb_pain;
		break;
	
	case 10:
		sprite_index = sp_jpMb_stand2;
		break;
	
	case 11:
		sprite_index = sp_jpMb_run;
		break;
	case 31:
		sprite_index = sp_jpMb_stand;
		break;
	case 32:
		sprite_index = sp_jpMb_stand2;
		break;
	}
}