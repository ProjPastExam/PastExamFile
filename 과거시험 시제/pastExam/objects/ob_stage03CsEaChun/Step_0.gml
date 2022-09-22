/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
//if (state == 8) x = x - 36;



switch (state) {
	
case 17:
	if (active) {
		visible = true;
		active = false;
		sprite_index = sp_chun_appear;
		image_index = 0;
	}
	break;
	
case 18:
	sprite_index = sp_chun_stand2;
	break;
	
case 19:
	if (!active) {
		sprite_index = sp_chun_spell;
		active = true;
		image_index = 0;
	}
	break;
}
	