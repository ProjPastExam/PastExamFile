// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobCmMode(){
	var plX = sc_pl_get("x");
	var plY = sc_pl_get("y");
	
	uc_set_target_position((x+plX*3)/4,(y+plY*3)/4);
}