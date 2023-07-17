/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
//if (state == 8) x = x - 36;



switch (state) {
	
case 5:
	visible = true;
	if (active) {
		active = false;
		sprite_index = sp_chun_appear;
		image_index = 0;
	}
	break;
	
case 6:
	sprite_index = sp_chun_stand;
	active = true;
	break;
	
	
case 16:
	sprite_index = sp_chun_stand2;
	if (active) {
		active = false;
		chunEf = instance_create_layer(x, y+50, "effect", ob_tutoChunCs1Ef);
	}
	break;
	
case 17:
	if (!active) {
		active = true;
		sprite_index = sp_chun_spell;
		image_index = 4;
	}
	break;
	
case 18:
	sprite_index = sp_chun_stand;
	if (active) {
		active = false;
		instance_destroy(chunEf);
	}
	//SE_Play(s_chun_spell2, global.vol);
	break;
	/*
case 4:
	if (active) {
		active = false;
		chunEf = instance_create_layer(x, y+50, "roomControl", ob_tutoChunCs1Ef);
	}
	break;
	
case 5:
	active = true;
	break;
	
case 6:
	sprite_index = sp_chun_spell;
	if (active) {
		active = false;
		image_index = 0;
	}
	break;
	*/
}
	