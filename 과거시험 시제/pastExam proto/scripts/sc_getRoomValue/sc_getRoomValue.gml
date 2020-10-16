// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_getRoomValue(argument0){
	switch (argument0) {
	case "pause":
		if ( ob_roomControl.pause != NULL )	return ob_roomControl.pause;
		else								return 0;
		break;
	
	case "slow":
		if ( ob_roomControl.slow != NULL )	return ob_roomControl.slow;
		else								return 0;
		break;
	}
}