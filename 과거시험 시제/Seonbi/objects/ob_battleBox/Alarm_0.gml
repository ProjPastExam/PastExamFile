/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	if (isActive) {
		if (pace < paceMax) {
			if (isTerm || ob_roomControl.mobNum <= 0) {
				if (isPace) {
					alarm[1] = 30;
					isPace = false;
				}
			}
		}
		else {
			if (isTemp) {
				with (ob_roomControl) {
					if (mobNum <= 0)	cmMode = 0;
				}
			}
		}
	}
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;