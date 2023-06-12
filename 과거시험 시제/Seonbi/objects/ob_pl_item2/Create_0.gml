/// @description Insert description here
// You can write your code in this editor
process = 0;
state = irandom_range(0, 2);
dir = 1;

image_alpha = 0.6;
background_color = c_gray;


if (state == 0) sprite_index = sp_pl_item2_1;
else if (state == 1) sprite_index = sp_pl_item2_2;
else if (state == 2) sprite_index = sp_pl_item2_3;

alarm[0] = 1;