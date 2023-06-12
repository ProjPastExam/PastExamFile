/// @description Insert description here
// You can write your code in this editor
draw_sprite(sp_itemScroll, 12, x, y+8*sin(sin_t/12));
draw_sprite_ext(backSprite, itemGrade-1, x, y+8*sin(sin_t/12), 1, 1, 0, c_white, (30-alarm[2])/30);
draw_sprite_ext(itemSprite, 0, x, y+8*sin(sin_t/12), 1, 1, 0, c_white, (30-alarm[2])/30);
