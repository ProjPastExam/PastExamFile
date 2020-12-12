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
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var bottom1	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
	var bottom2	= tilemap_get_at_pixel(tileId, x, bbox_bottom-16);
	if ( bottom1 == 3 ) { xSpeed = 0; ySpeed = 0; image_speed = 0; }
	if ( bottom1 == 2 && bottom2 != 2 && ySpeed > 0 ) { y += 16; }
	sc_obPhysics();
	image_xscale = dir;
}
else {
	image_speed = 0;
}