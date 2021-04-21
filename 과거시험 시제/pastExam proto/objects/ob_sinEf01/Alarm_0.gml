/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	alarm[0] = 1;
	image_speed = 1;
}
else {
	alarm[0] = 2;
	image_speed = 0.5;
}

if ( sc_getRoomValue("pause") == 0 ) {
	image_xscale = dir;
	x += dir*70;
	
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var center	= tilemap_get_at_pixel(tileId, x, y);
	
	if (center == 3) {
	var ex = instance_create_layer(x, y, "effect", ob_atkEf05);
	ex.sprite_index = sp_hitEffect_sin;
	ex.damage = 60;
	ex.shock = 30;
	instance_destroy();
	}
}
else {
	image_speed = 0;
}