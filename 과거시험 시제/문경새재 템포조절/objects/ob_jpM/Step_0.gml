/// @description Insert description here
// You can write your code in this editor
if (uc_get_x() > x-100 && !iis) {
	iis = true;
	ob_roomControl.cmMode = 9;
	uc_set_target_position(x, y);
	alarm[1] = 120;
}

if (sprite_index == sp_jpBoss_atk1_1 && image_index == 6)
{
	sprite_index = sp_jpBoss_atk1_2;
}