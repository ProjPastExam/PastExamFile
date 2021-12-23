// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobAd(){
	var plX = sc_pl_get("x");
	var drX = plX - x;
	var drY = sc_pl_get("y") - y;
	
	if (drX < 0) drX = drX* -1;
	
	if ( !ad && (drX < adDistance && (drY > adHeight * -1) && (drY < adHeight)) ) {
		state = 10;
		delay = 40;
		ad = true;
		if (plX > x) dir = 1;
		else dir = -1;
		part_type_scale( global.mobAdEf, dir, 1 );
		part_particles_create( global.hitEf, x, y, global.mobAdEf, 15 );
		if (alarm[1] > 0) alarm[1] = -10;
	}
	if ( ad && (drX > adDistance * 2) ) {
		if (alarm[1] < 0) alarm[1] = 210;
	}
	if ( ad && !sc_pl_get("isJump") && ((drY < adHeight * -1.3) || (drY > adHeight * 1.3)) ) {
		if (alarm[1] < 0) alarm[1] = 210;
	}
}