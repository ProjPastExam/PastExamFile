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
		with (instance_create_layer(x, y, "effect", ob_atkEf05)) {
			sprite_index = sp_hitEffect_sin;
			damage = global.fireDmg*3;
			shock = global.fireShock;
			pene = global.firePene;
			mpUp = global.fireMana;
			hitAfter = 20;
			
			image_xscale = other.dir;
		}
		
		/*
		var atk = instance_create_layer(x, y, "effect", ob_atkEf05)
		atk.sprite_index = sp_hitEffect_sin;
		atk.damage = global.fireDmg*3;
		atk.shock = global.fireShock;
		atk.pene = global.firePene;
		atk.mpUp = global.fireMana;
		atk.hitAfter = 20;
		atk.image_xscale = dir;
		
		*/
		instance_destroy();
	}
}
else {
	image_speed = 0;
}
alarm[0] = 1;