/// @description Insert description here
// You can write your code in this editor

var state = ob_roomControl.talkCnt;
if (state == 4) x = x - 7;


switch (state) {
case 4:
	visible = true;
	active = false;
	break;
		
case 5:
	sprite_index = sp_cs02_IStandCry;
	break;

case 10:
	sprite_index = sp_cs02_IStand;
	break;
	
case 14:
	sprite_index = sp_cs02_IStandCry;
	break;
	
case 15:
	sprite_index = sp_cs02_IStand;
	break;
	
}
	
	

