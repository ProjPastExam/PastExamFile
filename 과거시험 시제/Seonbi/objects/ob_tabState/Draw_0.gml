/// @description Insert description here
// You can write your code in this editor
var x1 = 195;
var x2 = 220;
var x3 = 5;
if (global.lan == 0) {
	x1 = 190;
	x2 = 215;
	x3 = 0;
}
var y1 = 35;
var y2 = 70;
var tempText = "+"
var perc = "%"



draw_set_font(f_korMini);

draw_set_color(#5B6EE1);

draw_set_halign(fa_left);
draw_text(x-x3, y, tempString[global.lan][0]);
draw_set_halign(fa_right);
draw_text(x+x1, y, int64(sc_pl_atkDmg(1)));
/*
if (global.itemScale[0][0] > 0) {
	draw_text(x+x2, y, tempText);
	draw_text(x+x3, y, int64(sc_pl_atkDmg(2)));
}
*/
//draw_text(x+170, y, int64(sc_pl_atkDmg(1)));
//draw_text(x+200, y, "+");
//draw_text(x+230, y, int64(sc_pl_atkDmg(2)));

draw_set_halign(fa_left);
draw_text(x-x3, y+y1, tempString[global.lan][1]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y1, int64(sc_pl_atkMana(1)));
/*
if (global.itemScale[0][1] > 0) {
	draw_text(x+x2, y+y1, tempText);
	draw_text(x+x3, y+y1, int64(sc_pl_atkMana(2)));
}
*/
//draw_text(x+170, y+30, int64(sc_pl_atkMana(1)));
//draw_text(x+200, y+30, "+");
//draw_text(x+230, y+30, int64(sc_pl_atkMana(2)));

draw_set_halign(fa_left);
draw_text(x-x3, y+y1*2, tempString[global.lan][2]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y1*2, sc_pl_atkComb(1));
draw_text(x+x2, y+y1*2, perc);
/*
if (global.itemScale[0][2] > 0) {
	draw_text(x+x2, y+60, tempText);
	draw_text(x+x3, y+60, sc_pl_atkComb(2));
}
*/
//draw_text(x+170, y+60, sc_pl_atkComb(1));
//draw_text(x+200, y+60, "+");
//draw_text(x+230, y+60, sc_pl_atkComb(2));

draw_set_halign(fa_left);
draw_text(x-x3, y+y1*3, tempString[global.lan][3]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y1*3, int64(sc_pl_atkCt(1)));
draw_text(x+x2, y+y1*3, perc);
/*
if (global.itemScale[0][3] > 0) {
	draw_text(x+x2, y+90, tempText);
	draw_text(x+x3, y+90, int64(sc_pl_atkCt(2)));
}
*/
//draw_text(x+170, y+90, int64(sc_pl_atkCt(1)));
//draw_text(x+200, y+90, "+");
//draw_text(x+230, y+90, int64(sc_pl_atkCt(2)));

/*
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
*/

draw_set_color(#746F00);

draw_set_halign(fa_left);
draw_text(x-x3, y+y2 + y1*3, tempString[global.lan][4]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2 + y1*3, int64(sc_pl_kickDmg(1)));
/*
if (global.itemScale[1][0] > 0) {
	draw_text(x+x2, y+150, tempText);
	draw_text(x+x3, y+150, int64(sc_pl_kickDmg(2)));
}
*/
//draw_text(x+170, y+180, int64(sc_pl_kickDmg(1)));
//draw_text(x+200, y+180, "+");
//draw_text(x+230, y+180, int64(sc_pl_kickDmg(2)));

draw_set_halign(fa_left);
draw_text(x-x3, y+y2 + y1*4, tempString[global.lan][5]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2 + y1*4, int64(sc_pl_kickMana(1)));
/*
if (global.itemScale[1][1] > 0) {
	draw_text(x+x2, y+180, tempText);
	draw_text(x+x3, y+180, int64(sc_pl_kickMana(2)));
}
*/
//draw_text(x+170, y+210, int64(sc_pl_kickMana(1)));
//draw_text(x+200, y+210, "+");
//draw_text(x+230, y+210, int64(sc_pl_kickMana(2)));

draw_set_halign(fa_left);
draw_text(x-x3, y+y2 + y1*5, tempString[global.lan][6]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2 + y1*5, sc_pl_kickComb(1));
draw_text(x+x2, y+y2 + y1*5, perc);
/*
if (global.itemScale[1][2] > 0) {
	draw_text(x+x2, y+210, tempText);
	draw_text(x+x3, y+210, sc_pl_kickComb(2));
}
*/
//draw_text(x+170, y+240, sc_pl_kickComb(1));
//draw_text(x+200, y+240, "+");
//draw_text(x+230, y+240, sc_pl_kickComb(2));

draw_set_halign(fa_left);
draw_text(x-x3, y+y2 + y1*6, tempString[global.lan][7]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2 + y1*6, int64(sc_pl_kickCt(1)));
draw_text(x+x2, y+y2 + y1*6, perc);
/*
if (global.itemScale[1][3] > 0) {
	draw_text(x+x2, y+240, tempText);
	draw_text(x+x3, y+240, int64(sc_pl_kickCt(2)));
}
*/
//draw_text(x+170, y+270, int64(sc_pl_kickCt(1)));
//draw_text(x+200, y+270, "+");
//draw_text(x+230, y+270, int64(sc_pl_kickCt(2)));

/*
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
*/

draw_set_color(#E84B38);

draw_set_halign(fa_left);
draw_text(x-x3, y+y2*2 + y1*6, tempString[global.lan][8]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2*2 + y1*6, int64(sc_pl_fireDmg(1)));
/*
if (global.itemScale[2][0] > 0) {
	draw_text(x+x2, y+300, tempText);
	draw_text(x+x3, y+300, int64(sc_pl_fireDmg(2)));
}
*/
//draw_text(x+170, y+360, int64(sc_pl_fireDmg(1)));
//draw_text(x+200, y+360, "+");
//draw_text(x+230, y+360, int64(sc_pl_fireDmg(2)));

draw_set_halign(fa_left);
draw_text(x-x3, y+y2*2 + y1*7, tempString[global.lan][9]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2*2 + y1*7, int64(sc_pl_fireMana(1)));
/*
if (global.itemScale[2][1] > 0) {
	draw_text(x+x2, y+330, tempText);
	draw_text(x+x3, y+330, int64(sc_pl_fireMana(2)));
}
*/
//draw_text(x+170, y+390, int64(sc_pl_fireMana(1)));
//draw_text(x+200, y+390, "+");
//draw_text(x+230, y+390, int64(sc_pl_fireMana(2)));

draw_set_halign(fa_left);
draw_text(x-x3, y+y2*2 + y1*8, tempString[global.lan][10]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2*2 + y1*8, sc_pl_fireComb(1));
draw_text(x+x2, y+y2*2 + y1*8, perc);
/*
if (global.itemScale[2][2] > 0) {
	draw_text(x+x2, y+360, tempText);
	draw_text(x+x3, y+360, sc_pl_fireComb(2));
}
*/
//draw_text(x+170, y+420, sc_pl_fireComb(1));
//draw_text(x+200, y+420, "+");
//draw_text(x+230, y+420, sc_pl_fireComb(2));

draw_set_halign(fa_left);
draw_text(x-x3, y+y2*2 + y1*9, tempString[global.lan][11]);
draw_set_halign(fa_right);
draw_text(x+x1, y+y2*2 + y1*9, int64(sc_pl_fireCt(1)));
draw_text(x+x2, y+y2*2 + y1*9, perc);
/*
if (global.itemScale[2][3] > 0) {
	draw_text(x+x2, y+390, tempText);
	draw_text(x+x3, y+390, int64(sc_pl_fireCt(2)));
}
*/
//draw_text(x+170, y+450, int64(sc_pl_fireCt(1)));
//draw_text(x+200, y+450, "+");
//draw_text(x+230, y+450, int64(sc_pl_fireCt(2)));

/*
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
*/