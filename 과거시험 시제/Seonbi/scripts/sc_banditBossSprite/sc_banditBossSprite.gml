// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_banditBossSprite(){
	image_xscale = dir;
	switch (state) {
	case 0:
		sprite_index = sp_banditBoss_stand1;
		break;
	case 1:
		sprite_index = sp_banditBoss_walk;
		break;
	case 5:
	case 6:
	case 7:
	case 8:
		sprite_index = sp_banditBoss_pain;
		break;
	
	case 10:
		sprite_index = sp_banditBoss_stand2;
		break;
	
	}
}