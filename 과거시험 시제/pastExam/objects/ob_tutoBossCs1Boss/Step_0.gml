/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
var isT = ob_roomControl.isTalk;
if (state == 9) x = x - 3;


switch (state) {
case 10:
	sprite_index = sp_jpMb_stand;
	break;
	
case 11:
	sprite_index = sp_jpMb_atk4Cs;
	if (active) {
		active = false;
		image_index = 0;
	}
	break;
	
case 13:
	sprite_index = sp_jpMb_stand2;
	break;

	
}
	