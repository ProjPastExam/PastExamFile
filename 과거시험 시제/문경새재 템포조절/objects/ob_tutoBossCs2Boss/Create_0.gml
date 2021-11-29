/// @description Insert description here
// You can write your code in this editor
image_xscale = -1;
active = true;
visible = false;


dashEf = part_type_create();

part_type_sprite(dashEf, sp_jpBoss_cs2, false, 1, false);
part_type_life(dashEf, 12, 12);
part_type_alpha2(dashEf, 0.8, 0);
part_type_scale(dashEf, -1, 1);