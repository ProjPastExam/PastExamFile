/// @description Insert description here
// You can write your code in this editor
	if (light_animation)
	{
		//Animation
		scr_light_animation();
	}
	x = uc_get_x();
	y = uc_get_y() - 700;
	
	if (ob_player.indoor) visible = false;
	else visible = true;