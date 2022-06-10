// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobMain(){
	if ( !isJump )			xSpeed = 0;
	if ( hitAfter > 0 )		hitAfter--;
	image_xscale = dir;
		
	if ( patrol ) sc_mobPatrol();
	if ( hp <= 0 ) { state = -1; process = 0; hitAfter = -1;}
	if (state != 5 && state != 6 && state != 7 && state != 8) sc_mobAd();
	
	if (state == 5 || state == 6 || state == 7 || state == 8) {
		if (ctCount < counter) ctCount++;
		sc_mobKnockback();
	}
	else if (state == 9) {
		process--;
		kbIndex--;
		sprite_index = shockSp;
		if ( kbIndex > 5 ) {
			if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 3.7*sqrt(kbIndex-5);
		}
		
		if (process > 75)		{ image_index = 0; }
		else if (process > 70)	{ image_index = 1; }
		else if	(process > 25)	{ image_index = 2; }
		else if	(process > 20)	{ image_index = 3; }
		else					{ image_index = 4; }
		
		if (process <= 0) {
			state = 10; delay = 10;
		}
	}
	else {
		if (ctCount > 0) ctCount = ctCount - 2;
		isStun = false;
		kbIndex = 0;
	}
}