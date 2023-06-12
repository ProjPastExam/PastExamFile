/// @description Insert description here
// You can write your code in this editor
if (state == 1) draw_sprite(sp_keySellect, 0, x, y);
if (state == 2) draw_sprite(sp_keySellect2, 0, x, y);

//draw_sprite_ext(sp_keySellect, 0, x, y, 1, 1, 0, c_white, apIndex/60);

isDouble = 0;
with (ob_keySet) {
	if (selfIndex == other.selfIndex)	other.isDouble++;
}
if (isDouble > 1)	draw_sprite_ext(sp_keySellect, 0, x, y, 1, 1, 0, c_white, 0.5);