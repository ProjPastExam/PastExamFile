// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobKnockback(){
	if (state == 5 || state == 6 || state == 7 ) process--;
	if ( state == 5 && process > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir*(process-5);
	}
	if ( state == 6 && process > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 1.5*(process-5);
	}
	if ( state == 7 && process > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 1.7*(process-5);
	}
	
	if ( process <= 0 && !isJump && (state == 5 || state == 6 || state == 7) ) 
		{ state = 10;	delay = hitDelay; } 
	//if ( hitAfter == 14 && isJump ) ySpeed = -8;
}