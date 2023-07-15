/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	if (isActive) {
		uc_set_target_position(x,bbox_bottom-176-global.camUp*100);
		if (pace < paceMax) {
			if (isTerm || remMob <= 0) {
				if (isPace) {
					alarm[1] = 30;
					isPace = false;
				}
			}
		}
		else {
			if (isTemp) {
				with (ob_roomControl) {
					if (other.remMob <= 0)	cmMode = 0;
				}
			}
		}
	}
	image_speed = 1;
}
else {
	image_speed = 0;
}
isMob = false;
alarm[0] = 1;