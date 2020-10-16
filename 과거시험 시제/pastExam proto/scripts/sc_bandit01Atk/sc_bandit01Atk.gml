// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_bandit01Atk(){
	var plX = sc_pl_get("x");
	if ( state == 10 ) {
		if ( x > plX ) dir = -1;
		else dir = 1;
		if ( delay == 0 ) {
			state = 11;
		}
	}
	if ( state == 11 ){
		if ( plX > x + 180 ) {
			dir = 1;
			xSpeed = 6;
		}
		else if ( plX < x - 180 ) {
			dir = -1;
			xSpeed = -6;
		}
		else {
			state = 12;
		}
	}
	if ( state == 12 ) {
		process++;
		sprite_index = sp_bandit01_atk;
		xSpeed = 0;
		if ( process < 15 ) { image_index = 0; }
		else if ( process < 19 ) { image_index = 1; xSpeed = dir*24; }
		else if ( process < 23 ) { image_index = 2; }
		else if ( process < 27 ) { image_index = 3; }
		else if ( process < 31 ) { image_index = 4; }
		else if ( process < 40 ) { image_index = 5; }
		else { state = 10;	process = 0;	delay = random_range(50, 70); }
	}
}