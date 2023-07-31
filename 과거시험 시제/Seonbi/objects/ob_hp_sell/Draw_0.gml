/// @description Insert description here
// You can write your code in this editor


draw_sprite(sp_hpScroll, 12, x, y+8*sin(sin_t/12));
draw_sprite_ext(sp_hpReward, 0, x, y+8*sin(sin_t/12), 1, 1, 0, c_white, (30-alarm[2])/30);
//draw_sprite_ext(itemSprite, 0, x, y+8*sin(sin_t/12), 1, 1, 0, c_white, (30-alarm[2])/30);

sc_costIndexPrint(costIndex, 0, 80);