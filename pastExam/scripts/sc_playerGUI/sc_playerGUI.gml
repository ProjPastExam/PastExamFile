/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(sp_healthbar_bg, 0, healthbar_x, healthbar_y,healthbar_width, healthbar_height);
draw_sprite_stretched(sp_healthbar, 0, healthbar_x, healthbar_y, min((global.hp/global.hp_max) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite_stretched(sp_healthbar_border , 0, healthbar_x, healthbar_y,healthbar_width, healthbar_height);

//draw_sprite_stretched(sp_healthbar_bg, 0, energybar_x, energybar_y, energybar_width, energybar_height);
//draw_sprite_stretched(sp_energybar, 0, energybar_x, energybar_y, min((mp/mp_max) * energybar_width, energybar_width), energybar_height);
//draw_sprite_stretched(sp_healthbar_border, 0, energybar_x, energybar_y, energybar_width, energybar_height);

//draw_text(healthbar_x+8,healthbar_y, string(hp)+'/'+string(hp_max));
//draw_text(energybar_x+12, energybar_y+80, string(mp));
draw_text(healthbar_x+48, healthbar_y+92, string(global.hp));
// x,y좌표 고정