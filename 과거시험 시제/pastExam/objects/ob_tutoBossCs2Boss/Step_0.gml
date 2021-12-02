/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
if (state == 8) x = x - 36;
if (state == 9) x = x - 24;
if (state == 10) x = x - 12;


switch (state) {
	
case 4:
	visible = true;
	break;
	
case 6:
	sprite_index = sp_jpBoss_cs1;
	if (active) {
		active = false;
		image_index = 0;
	}
	break;
	
case 8:
	active = true;
	sprite_index = sp_jpBoss_cs2;
	if (alarm[1] < 0) alarm[1] = 3;
	break;
	
case 9:
	sprite_index = sp_jpBoss_cs3;
	image_index = 0;
	break;
	
case 10:
	sprite_index = sp_jpBoss_cs3;
	image_index = 1;
	break;
	
case 11:
	sprite_index = sp_jpBoss_cs3;
	image_index = 2;
	break;
	
case 12:
	sprite_index = sp_jpBoss_cs3;
	image_index = 3;
	break;
	
case 13:
	sprite_index = sp_jpBoss_cs3;
	image_index = 4;
	break;
/*
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
*/
	
}
	