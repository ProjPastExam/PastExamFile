/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
//if (state == 8) x = x - 36;



switch (state) {
	
case 2:
	visible = true;
	if (active) {
		active = false;
		sprite_index = sp_chun_appear;
		image_index = 0;
	}
	break;
	
case 3:
	sprite_index = sp_chun_stand2;
	active = true;
	break;
	
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
	
}
	