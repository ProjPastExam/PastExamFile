/// @description Insert description here
// You can write your code in this editor

draw_self();
if (sIndex == enhanceNum) {
	draw_sprite(sp_enhanceIconSelect, 0, x, y);
}

draw_sprite(sp_enhanceNum, 0, x, y+57);

var abIndex =  0;
switch (enhanceNum) {
case 1:	abIndex = global.abAtkDmg;		break;	
case 2:	abIndex = global.abAtkMana;		break;	
case 3:	abIndex = global.abAtkCtDmg;	break;	

case 4:	abIndex = global.abKickDmg;		break;	
case 5:	abIndex = global.abKickComb;	break;	
case 6:	abIndex = global.abKickCt;		break;

case 7:	abIndex = global.abFireDmg;		break;	
case 8:	abIndex = global.abFireCt;		break;	
case 9:	abIndex = global.abFireCtDmg;	break;	
}
draw_set_halign(fa_center);
draw_set_font(f_dmg);
draw_set_color(c_black);
	
draw_text(x, y+57, abIndex);