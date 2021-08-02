/// @description Insert description here
// You can write your code in this editor
if (!isActive) {
	isActive = true;
	if (instance_exists(ob_roomControl)) ob_roomControl.cmMode = 1;
	uc_set_target_position(x,bbox_bottom);
}