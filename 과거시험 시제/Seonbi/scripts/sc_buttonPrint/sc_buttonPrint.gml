// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_buttonPrint(_btIndex, _gpIndex, _x, _y){
	if (global.keyGp == 0) {
		var i = sc_keySprite(_btIndex);
		draw_sprite(i, 0, _x, _y);
	}
	else {
		var i = sc_gpSprite(_gpIndex);
		draw_sprite(i, 0, _x, _y);
	}
}