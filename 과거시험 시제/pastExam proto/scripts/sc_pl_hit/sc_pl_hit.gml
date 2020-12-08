// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_hit(argument0){
	if ( sc_pl_get("hitAfter") == 0 ) {
		switch (argument0) {
		case 0:
			global.hp -= 1;
			uc_shake(10, 0.2);
			if ( sc_getRoomValue("pause") == 0 ) { ob_roomControl.pause = 20; }
			ob_player.hitAfter = 90;
			ob_player.atkProcess = 0;
			ob_player.canMove = 0;
			break;
		}
	}
}