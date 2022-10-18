/// @description Insert description here
// You can write your code in this editor
switch (global.volBgm) {
	case 0:		image_index = 0;	break;
	case 25:	image_index = 1;	break;
	case 50:	image_index = 2;	break;
	case 75:	image_index = 3;	break;
	case 100:	image_index = 4;	break;
}

if (settingIndex == 15) {
	if (sc_getKey(global.btInter, gp_face4, 0)) {
		if (state)	state = false;
		else		state = true;
	}
}