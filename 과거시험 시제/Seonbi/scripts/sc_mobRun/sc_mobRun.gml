// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobRun (runSpeed, atkDist, backDist, backState, atkState, plX, left1, left2, right1, right2){
	var runSpd = runSpeed;
	if (sk121Index > -1)	{ runSpd = runSpd/4; }
	
	if ( plX < x + backDist && plX > x - backDist && (left1 != 3 && right1 != 3)) {
		process = 0;
		state = backState;
	}
	else if ( plX > x + atkDist ) {
		sprite_index = runSp;
		dir = 1;
		xSpeed = runSpd;
	}
	else if ( plX < x - atkDist ) {
		sprite_index = runSp;
		dir = -1;
		xSpeed = -runSpd;
	}
	else {
		process = 0;
		state = atkState;
	}
	if ( !isJump && dir == -1 && (( left1 == 3 || left2 == 3)) && !isHpUI)	
		{ ySpeed = -18; }
	if ( !isJump && dir == 1 && (( right1 == 3 || right2 == 3 )) && !isHpUI)
		{ ySpeed = -18;	 }
}