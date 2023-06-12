/// @description Insert description here
// You can write your code in this editor


with (ob_player) {
	other.x = x;
	other.y = y;
}

if (global.comCt < global.item8Index && !isDestroy) {
	sprite_index = sp_pl_itemEf8_2;
	image_index = 0;
	isDestroy = true;
}
alarm[0] = 1;