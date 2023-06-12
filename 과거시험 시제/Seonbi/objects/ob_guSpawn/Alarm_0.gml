/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	process++;
	if (isSpawn && image_index > 14)
	{
		with (instance_create_layer(x, y+160, "effect2", obIndex))
		{
			dir = other.image_xscale;
			state	= 10;
			delay	= 120;
			ad		= true;
		}
		isSpawn = false;
		
	}

	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;