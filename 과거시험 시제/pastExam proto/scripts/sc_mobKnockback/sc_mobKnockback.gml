// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobKnockback(){
	if ( state == 5 && hitAfter > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir*(hitAfter-5);
	}
	if ( state == 6 && hitAfter > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 4.5*(hitAfter-5);
	}
	if ( hitAfter == 0 && !isJump && (state == 5 || state == 6) ) { state = 10;	delay = 0; } 
	if ( hitAfter == 14 && isJump ) ySpeed = -8;
}