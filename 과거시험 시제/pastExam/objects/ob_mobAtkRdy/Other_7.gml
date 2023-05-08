/// @description Insert description here
// You can write your code in this editor
if (soundEf != NULL)	SE_Play(soundEf, global.vol);
with (instance_create_layer(x, y, "effect", obCreate)) {
	image_xscale = other.image_xscale;
	sprite_index = other.obSprite;
}
instance_destroy();