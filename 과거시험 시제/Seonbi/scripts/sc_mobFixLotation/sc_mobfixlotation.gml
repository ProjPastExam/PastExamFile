// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobfixlotation(){
	if (room_width - 100 < x && xSpeed > 0) {
		xSpeed = 0;
	}
	
	if (sk121Index > -1)
	{
		sk121Index++;
		if (sk121Index > 85) sk121Index = -1;
	}
}