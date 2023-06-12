/// @description Insert description here
// You can write your code in this editor


if ( sc_getRoomValue("pause") == 0 ) {
	sc_obPhysics();
	
	var plX = sc_pl_get("x");
	var plY = sc_pl_get("y");
	
	var disX = plX-x;
	var disY = plY-y;
	
	var distIndex = sqrt(sqr(disX) + sqr(disY));
	if (distIndex < 150) {
		xSpeed = disX/distIndex * 10;
		ySpeed = disY/distIndex * 10;
		if (distIndex < 10) {
			if (global.hp < global.hpMax)	{ global.hp++; }
			instance_create_layer(0, 0, "effect", ob_healEf);
			instance_destroy();
		}
	}
	else {
		xSpeed = 0;
	}
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;
