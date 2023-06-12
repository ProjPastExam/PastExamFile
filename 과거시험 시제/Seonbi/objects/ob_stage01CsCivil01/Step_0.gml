/// @description Insert description here
// You can write your code in this editor
var state = ob_roomControl.talkCnt;

switch (state) { 
case 7:
	if (active) {
		active = false;
		image_index = 0;
	}
	sprite_index = sp_civil01_fear;
	break;
case 8:
	sprite_index = sp_civil01_fear2;
	break;	
case 14:
	sprite_index = sp_civil01_run;
	image_xscale = -1;
	x -= 8;
	break;

}
	