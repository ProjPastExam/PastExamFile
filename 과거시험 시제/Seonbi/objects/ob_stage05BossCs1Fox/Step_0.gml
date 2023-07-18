/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
//if (state == 8) x = x - 36;



switch (state) {
	
case 1:
	x += 12;
	break;
	
case 2:
	sprite_index = sp_fox_stand;
	break;
	
case 18:
	sprite_index = sp_gu_stand;
	if (active) {
		y -= 96;
		image_xscale = -1;
		active = false;
	}
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
	