/// @description Insert description here
// You can write your code in this editor

var x2 = 225;
var x3 = 210;

draw_set_font(f_korMini);

draw_set_color(#5B6EE1);

draw_set_halign(fa_left);
draw_text(x, y, "화살 공격력");
draw_set_halign(fa_center);
draw_text(x+170, y, int64(sc_pl_atkDmg()));
if (global.itemScale[0][0] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y, tempText);
	draw_text(x+x3, y, global.itemScale[0][0]);
}
//draw_text(x+170, y, int64(sc_pl_atkDmg(1)));
//draw_text(x+200, y, "+");
//draw_text(x+230, y, int64(sc_pl_atkDmg(2)));

draw_set_halign(fa_left);
draw_text(x, y+30, "집중 회복량");
draw_set_halign(fa_center);
draw_text(x+170, y+30, int64(sc_pl_atkMana()));
if (global.itemScale[0][1] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+30, tempText);
	draw_text(x+x3, y+30, global.itemScale[0][1]);
}
//draw_text(x+170, y+30, int64(sc_pl_atkMana(1)));
//draw_text(x+200, y+30, "+");
//draw_text(x+230, y+30, int64(sc_pl_atkMana(2)));

draw_set_halign(fa_left);
draw_text(x, y+60, "연타 수치");
draw_set_halign(fa_center);
draw_text(x+170, y+60, sc_pl_atkComb(1));
if (global.itemScale[0][2] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+60, tempText);
	draw_text(x+x3, y+60, global.itemScale[0][2]);
}
//draw_text(x+170, y+60, sc_pl_atkComb(1));
//draw_text(x+200, y+60, "+");
//draw_text(x+230, y+60, sc_pl_atkComb(2));

draw_set_halign(fa_left);
draw_text(x, y+90, "치명타 보정");
draw_set_halign(fa_center);
draw_text(x+170, y+90, int64(sc_pl_atkCt(1)));
if (global.itemScale[0][3] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+90, tempText);
	draw_text(x+x3, y+90, global.itemScale[0][3]);
}
//draw_text(x+170, y+90, int64(sc_pl_atkCt(1)));
//draw_text(x+200, y+90, "+");
//draw_text(x+230, y+90, int64(sc_pl_atkCt(2)));

draw_set_halign(fa_left);
draw_text(x, y+120, "치명타 공격력");
draw_set_halign(fa_center);
draw_text(x+170, y+120, int64(sc_pl_atkCtMag()));
if (global.itemScale[0][4] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+120, tempText);
	draw_text(x+x3, y+120, global.itemScale[0][4]);
}
//draw_text(x+170, y+120, int64(sc_pl_atkCtMag(1)));
//draw_text(x+200, y+120, "+");
//draw_text(x+230, y+120, int64(sc_pl_atkCtMag(2)));


draw_set_color(#746F00);

draw_set_halign(fa_left);
draw_text(x, y+180, "충격 공격력");
draw_set_halign(fa_center);
draw_text(x+170, y+180, int64(sc_pl_kickDmg()));
if (global.itemScale[1][0] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+180, tempText);
	draw_text(x+x3, y+180, global.itemScale[1][0]);
}
//draw_text(x+170, y+180, int64(sc_pl_kickDmg(1)));
//draw_text(x+200, y+180, "+");
//draw_text(x+230, y+180, int64(sc_pl_kickDmg(2)));

draw_set_halign(fa_left);
draw_text(x, y+210, "집중 회복량");
draw_set_halign(fa_center);
draw_text(x+170, y+210, int64(sc_pl_kickMana()));
if (global.itemScale[1][1] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+210, tempText);
	draw_text(x+x3, y+210, global.itemScale[1][1]);
}
//draw_text(x+170, y+210, int64(sc_pl_kickMana(1)));
//draw_text(x+200, y+210, "+");
//draw_text(x+230, y+210, int64(sc_pl_kickMana(2)));

draw_set_halign(fa_left);
draw_text(x, y+240, "연타 수치");
draw_set_halign(fa_center);
draw_text(x+170, y+240, sc_pl_kickComb(1));
if (global.itemScale[1][2] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+240, tempText);
	draw_text(x+x3, y+240, global.itemScale[1][2]);
}
//draw_text(x+170, y+240, sc_pl_kickComb(1));
//draw_text(x+200, y+240, "+");
//draw_text(x+230, y+240, sc_pl_kickComb(2));

draw_set_halign(fa_left);
draw_text(x, y+270, "치명타 보정");
draw_set_halign(fa_center);
draw_text(x+170, y+270, int64(sc_pl_kickCt(1)));
if (global.itemScale[1][3] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+270, tempText);
	draw_text(x+x3, y+270, global.itemScale[1][3]);
}
//draw_text(x+170, y+270, int64(sc_pl_kickCt(1)));
//draw_text(x+200, y+270, "+");
//draw_text(x+230, y+270, int64(sc_pl_kickCt(2)));

draw_set_halign(fa_left);
draw_text(x, y+300, "치명타 공격력");
draw_set_halign(fa_center);
draw_text(x+170, y+300, int64(sc_pl_kickCtMag()));
if (global.itemScale[1][4] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+300, tempText);
	draw_text(x+x3, y+300, global.itemScale[1][4]);
}
//draw_text(x+170, y+300, int64(sc_pl_kickCtMag(1)));
//draw_text(x+200, y+300, "+");
//draw_text(x+230, y+300, int64(sc_pl_kickCtMag(2)));


draw_set_color(#E84B38);

draw_set_halign(fa_left);
draw_text(x, y+360, "화약 공격력");
draw_set_halign(fa_center);
draw_text(x+170, y+360, int64(sc_pl_fireDmg()));
if (global.itemScale[2][0] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+360, tempText);
	draw_text(x+x3, y+360, global.itemScale[2][0]);
}
//draw_text(x+170, y+360, int64(sc_pl_fireDmg(1)));
//draw_text(x+200, y+360, "+");
//draw_text(x+230, y+360, int64(sc_pl_fireDmg(2)));

draw_set_halign(fa_left);
draw_text(x, y+390, "집중 회복량");
draw_set_halign(fa_center);
draw_text(x+170, y+390, int64(sc_pl_fireMana()));
if (global.itemScale[2][1] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+390, tempText);
	draw_text(x+x3, y+390, global.itemScale[2][1]);
}
//draw_text(x+170, y+390, int64(sc_pl_fireMana(1)));
//draw_text(x+200, y+390, "+");
//draw_text(x+230, y+390, int64(sc_pl_fireMana(2)));

draw_set_halign(fa_left);
draw_text(x, y+420, "연타 수치");
draw_set_halign(fa_center);
draw_text(x+170, y+420, sc_pl_fireComb(1));
if (global.itemScale[2][2] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+420, tempText);
	draw_text(x+x3, y+420, global.itemScale[2][2]);
}
//draw_text(x+170, y+420, sc_pl_fireComb(1));
//draw_text(x+200, y+420, "+");
//draw_text(x+230, y+420, sc_pl_fireComb(2));

draw_set_halign(fa_left);
draw_text(x, y+450, "치명타 보정");
draw_set_halign(fa_center);
draw_text(x+170, y+450, int64(sc_pl_fireCt(1)));
if (global.itemScale[2][3] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+450, tempText);
	draw_text(x+x3, y+450, global.itemScale[2][3]);
}
//draw_text(x+170, y+450, int64(sc_pl_fireCt(1)));
//draw_text(x+200, y+450, "+");
//draw_text(x+230, y+450, int64(sc_pl_fireCt(2)));

draw_set_halign(fa_left);
draw_text(x, y+480, "치명타 공격력");
draw_set_halign(fa_center);
draw_text(x+170, y+480, int64(sc_pl_fireCtMag()));
if (global.itemScale[2][4] > 0) {
	var tempText = "(  /6)"
	draw_text(x+x2, y+480, tempText);
	draw_text(x+x3, y+480, global.itemScale[2][4]);
}
//draw_text(x+170, y+480, int64(sc_pl_fireCtMag(1)));
//draw_text(x+200, y+480, "+");
//draw_text(x+230, y+480, int64(sc_pl_fireCtMag(2)));
