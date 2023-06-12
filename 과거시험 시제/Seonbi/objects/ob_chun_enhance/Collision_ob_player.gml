/// @description Insert description here
// You can write your code in this editor


if (sc_getKey(global.btInter, global.gpInter, 0) && instance_exists(ob_roomControl) && sc_pl_get("canMove") == 0) {
	with (ob_roomControl) {
		isEnhance = true;
	}
}
isCollision = true;