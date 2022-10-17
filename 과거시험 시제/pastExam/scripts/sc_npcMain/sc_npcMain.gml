// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_npcMain(){
	var plX = 0;
	
	if (instance_exists(ob_player)) {
		plX = sc_pl_get("x");
		if (plX > x) image_xscale = 1;
		else image_xscale = -1;
	}
	
	if (sc_getKey(global.btAtk, global.gpAtk, 1) && isTalk) {
		talkIndex[talkCnt].talkFunction();
	}
	
	isCollision = false;
}