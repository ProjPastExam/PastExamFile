/// @description Insert description here
// You can write your code in this editor
if (sc_getKey(global.btInter, global.gpInter, 0) && isActive) {
	isActive = false;
	with (ob_roomControl) {
		pause = 0;
	}
}

if (alp < 90) alp += 1;