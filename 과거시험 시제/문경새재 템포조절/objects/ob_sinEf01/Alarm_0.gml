/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	image_speed = 1;
}
else {
	image_speed = 0.5;
}

if ( sc_getRoomValue("pause") == 0 ) {
	image_xscale = dir;
	x += dir*70;
	
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var center	= tilemap_get_at_pixel(tileId, x, y);
	
	if (center == 3) act = true;
	
	if (act) {
		var ex = instance_create_layer(x, y, "effect", ob_atkEf05);
		var dmg = 0;
		var sck = 0;

		if (instance_exists(ob_player)) {
			dmg = 45 + (5 * ob_player.isSin);
			sck = 150 + (30 * ob_player.isSin);
		}

		ex.sprite_index = sp_hitEffect_sin;
		ex.damage = dmg;
		ex.shock = sck;
		ex.image_xscale = dir;
		instance_destroy();
	}
}
else {
	image_speed = 0;
}
alarm[0] = 1;