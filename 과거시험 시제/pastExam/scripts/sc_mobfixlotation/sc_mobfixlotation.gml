// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobfixlotation(){
	if (room_width - 100 < x && xSpeed > 0) {
		xSpeed = 0;
	}
}