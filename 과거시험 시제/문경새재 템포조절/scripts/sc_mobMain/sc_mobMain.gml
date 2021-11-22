// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobMain(){
	if ( !isJump )	xSpeed = 0;
	if ( hitAfter > 0 ) hitAfter--;
	image_xscale = dir;
		
	if ( patrol ) sc_mobPatrol();
	if ( hp <= 0 ) { state = -1; process = 0; }
	if (state != 5 && state != 6 && state != 7 && state != 8) sc_mobAd();
	
	if (state == 5 || state == 6 || state == 7 || state == 8) {
		if (ctCount < counter) ctCount++;
		sc_mobKnockback();
	}
	else {
		if (ctCount > 0) ctCount = ctCount - 2;
	}
}