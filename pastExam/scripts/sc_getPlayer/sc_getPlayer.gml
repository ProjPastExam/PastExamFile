// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_getPlayer( argument0 ){
	if ( argument0 == "x" ) {
		if ( ob_player.x != NULL ) return ob_player.x;
		else return -1;
	}
	
	if ( argument0 == "y" ) {
		if ( ob_player.y != NULL ) return ob_player.y;
		else return -1;
	}
	
	if ( argument0 == "bbox_bottom" ) {
		if ( ob_player.bbox_bottom != NULL ) return ob_player.bbox_bottom;
		else return -1;
	}
	
	if ( argument0 == "playerDmg" ) {
		if ( ob_player.playerDmg != NULL ) return ob_player.playerDmg;
		else return -1;
	}
}