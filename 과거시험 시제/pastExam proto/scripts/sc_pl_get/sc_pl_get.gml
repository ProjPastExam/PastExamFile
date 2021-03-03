// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_get( argument0 ){
	switch ( argument0 ) {
	
		case "x":
			if ( object_exists(ob_player) )	return ob_player.x;
			else							return -1;
			break;
			
		case "y":
			if ( object_exists(ob_player) )	return ob_player.y;
			else							return -1;
			break;
			
		case "bbox_bottom":
			if ( object_exists(ob_player) )	return ob_player.bbox_bottom;
			else							return -1;
			break;
			
		case "dir":
			if ( object_exists(ob_player) )	return ob_player.dir;
			else							return -1;
			break;
			
		case "hitAfter":
			if ( object_exists(ob_player) )	return ob_player.hitAfter;
			else							return -1;
			break;
			
		case "energy":
			if ( object_exists(ob_player) )	return ob_player.energy;
			else							return -1;
			break;
		case "isJump":
			if ( object_exists(ob_player) )	return ob_player.isJump;
			else							return -1;
			break;
	}
}