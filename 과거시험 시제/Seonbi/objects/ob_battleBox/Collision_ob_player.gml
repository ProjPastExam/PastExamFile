/// @description Insert description here
// You can write your code in this editor
if (!isActive) {
	isActive = true;
	remMob = 0;
	if (instance_exists(ob_roomControl)) ob_roomControl.cmMode = 1;
	uc_set_target_position(x,bbox_bottom-80-global.camUp*100);
	alarm[1] = 1;
}