/// @description Insert description here
// You can write your code in this editor
var t = 0;
if (alarm[1] > 0) {t = (30 - alarm[1])/30}
draw_sprite_ext(sp_blackF, 0, x, y, 1, 1, 1, 1, t);