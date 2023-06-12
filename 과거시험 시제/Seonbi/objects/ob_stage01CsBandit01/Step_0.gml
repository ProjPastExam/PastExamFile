/// @description Insert description here
// You can write your code in this editor
var state = ob_roomControl.talkCnt;

if (die) {
	if (process < 24)	process++;
	if (process < 8)		{ image_index = 0;	x += 15; }
	else if (process < 16)	{ image_index = 1;	x += 10; }
	else if (process < 24)	{ image_index = 2;	x += 5; }
	else					{ image_index = 3; }
}

switch (state) {
case 6:
	if (active) {
		active = false;
		alarm[1] = 9;
	}
	break;
}
	
	
