/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	
	if (image_index > 2)
	{
		with(ob)
		{
			image_alpha -= 0.05;
		}
	}
	if (image_index > 8)
	{
		instance_destroy(ob);
		instance_destroy();
	}
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;