/// @description Insert description here
// You can write your code in this editor


if (pace < paceMax) {
	var cX = uc_get_view_width()/2 + 100;
	var mob;

	if (mobNum[pace] == 1) {
		mob = instance_create_layer(x+cX, y, "Instances", mobStack[pace][1])
		mob.xSpeed = -9;
		mob.state = 11;
	}
	if (mobNum[pace] == 2) {
		mob = instance_create_layer(x-cX, y, "Instances", mobStack[pace][1])
		mob.xSpeed = 9;
		mob.state = 11;
	}
	if (mobNum[pace] == 3) {
		mob = instance_create_layer(x+cX+100, y, "Instances", mobStack[pace][1])
		mob.xSpeed = -9;
		mob.state = 11;
	}
	if (mobNum[pace] == 4) {
		mob = instance_create_layer(x-cX-100, y, "Instances", mobStack[pace][1])
		mob.xSpeed = 9;
		mob.state = 11;
	}
	pace++;
	alarm[1] = term;
	if ( sc_getRoomValue("pause") != 0 ) if (alarm[1] > 0) alarm[1]++;
}
else {
	if (instance_exists(ob_roomControl)) ob_roomControl.cmMode = 0;
}