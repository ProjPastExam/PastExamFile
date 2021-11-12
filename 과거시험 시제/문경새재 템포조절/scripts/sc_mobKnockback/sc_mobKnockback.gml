// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobKnockback(){
	
	if (state == 5 || state == 6 || state == 7 || state == 8 ) { 
		process--;
		dir = -1 * hitDir;
		if (isJump && state != 8) state = 8;
	}
	if ( state == 5 && process > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 2*sqrt(process-5);
	}
	if ( state == 6 && process > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 3.7*sqrt(process-5);
	}
	if ( (state == 7 || state == 8) && process > 5 ) {
		if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 4*sqrt(process-5);
	}
	if (state == 8 && ctCount > counter/2) { ySpeed += 2*(ctCount-(counter/2))/(counter/2); }
	
	
	if ( process <= 0 && !isJump && (state == 5 || state == 6 || state == 7 || state == 8) ) { 
		var ct = 0;
		if (ctCount > counter/2) ct = ctCount;
		state = 10;	delay = hitDelay*(counter-ct)/(counter/2);
	} 
}