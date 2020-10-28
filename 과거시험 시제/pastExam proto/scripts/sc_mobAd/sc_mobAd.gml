// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobAd(){
	var drX = sc_pl_get("x") - x;
	var drY = sc_pl_get("y") - y;
	
	if (drX < 0) drX = drX* -1;
	
	if ( !ad && (drX < adDistance && (drY > -196) && (drY < 196)) ) {
		state = 10;
		delay = 0;
		ad = true;
	}
	if ( ad && (drX > adDistance * 1.5 || (drY < -320) || (drY > 320)) ) {
		state = 0;
		delay = random_range(90,120);
		ad = false;
		process = 0;
	}
}