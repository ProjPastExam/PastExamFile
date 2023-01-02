// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobCmMode(){
	if (!instance_exists(ob_roomControl)) return;
	
	var cmMode = ob_roomControl.cmMode;
	if (cmMode == 3) {
		var plX = sc_pl_get("x");
		var plY = sc_pl_get("y");
		uc_set_target_position((x+plX*3)/4,(y+plY*3)/4-180);
	}
	else if	(cmMode == 4) {
		uc_set_target_position(x, y-180);
	}
	
}