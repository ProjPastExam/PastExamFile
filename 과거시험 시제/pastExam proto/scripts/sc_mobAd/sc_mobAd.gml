// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobAd(){
	var drX = sc_pl_get("x") - x;
	var drY = sc_pl_get("y") - y;
	
	if (drX < 0) drX = drX* -1;
	
	if ( !ad && (drX < adDistance && (drY > adHeight * -1) && (drY < adHeight)) ) {
		state = 10;
		delay = 0;
		ad = true;
		if (alarm[1] > 0) alarm[1] = -1;
	}
	if ( ad && (drX > adDistance * 2) ) {
		if (alarm[1] < 0) alarm[1] = 60;
	}
	if ( ad && !sc_pl_get("isJump") && ((drY < adHeight * -1.3) || (drY > adHeight * 1.3)) ) {
		if (alarm[1] < 0) alarm[1] = 60;
	}
}