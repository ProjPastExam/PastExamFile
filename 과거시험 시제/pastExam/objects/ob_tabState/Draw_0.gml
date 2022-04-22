/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_korMini);

draw_set_color(#5B6EE1);

draw_set_halign(fa_left);
draw_text(x, y, "화살 공격력");
draw_set_halign(fa_center);
draw_text(x+180, y, int64(sc_pl_atkDmg(1)));
draw_text(x+210, y, "+");
draw_text(x+240, y, int64(sc_pl_atkDmg(2)));

draw_set_halign(fa_left);
draw_text(x, y+30, "집중 회복량");
draw_set_halign(fa_center);
draw_text(x+180, y+30, int64(sc_pl_atkMana(1)));
draw_text(x+210, y+30, "+");
draw_text(x+240, y+30, int64(sc_pl_atkMana(2)));

draw_set_halign(fa_left);
draw_text(x, y+60, "방어 관통");
draw_set_halign(fa_center);
draw_text(x+180, y+60, int64(sc_pl_atkPene(1)));
draw_text(x+210, y+60, "+");
draw_text(x+240, y+60, int64(sc_pl_atkPene(2)));

draw_set_halign(fa_left);
draw_text(x, y+90, "치명타 확률");
draw_set_halign(fa_center);
draw_text(x+180, y+90, int64(sc_pl_atkCt(1)));
draw_text(x+210, y+90, "+");
draw_text(x+240, y+90, int64(sc_pl_atkCt(2)));

draw_set_halign(fa_left);
draw_text(x, y+120, "치명타 배율");
draw_set_halign(fa_center);
draw_text(x+180, y+120, int64(sc_pl_atkCt(1)));
draw_text(x+210, y+120, "+");
draw_text(x+240, y+120, int64(sc_pl_atkCt(2)));


draw_set_color(#746F00);

draw_set_halign(fa_left);
draw_text(x, y+180, "충격 공격력");
draw_set_halign(fa_center);
draw_text(x+180, y+180, int64(sc_pl_kickDmg(1)));
draw_text(x+210, y+180, "+");
draw_text(x+240, y+180, int64(sc_pl_kickDmg(2)));

draw_set_halign(fa_left);
draw_text(x, y+210, "집중 회복량");
draw_set_halign(fa_center);
draw_text(x+180, y+210, int64(sc_pl_kickMana(1)));
draw_text(x+210, y+210, "+");
draw_text(x+240, y+210, int64(sc_pl_kickMana(2)));

draw_set_halign(fa_left);
draw_text(x, y+240, "방어 관통");
draw_set_halign(fa_center);
draw_text(x+180, y+240, int64(sc_pl_kickPene(1)));
draw_text(x+210, y+240, "+");
draw_text(x+240, y+240, int64(sc_pl_kickPene(2)));

draw_set_halign(fa_left);
draw_text(x, y+270, "치명타 확률");
draw_set_halign(fa_center);
draw_text(x+180, y+270, int64(sc_pl_kickCt(1)));
draw_text(x+210, y+270, "+");
draw_text(x+240, y+270, int64(sc_pl_kickCt(2)));

draw_set_halign(fa_left);
draw_text(x, y+300, "치명타 배율");
draw_set_halign(fa_center);
draw_text(x+180, y+300, int64(sc_pl_kickCt(1)));
draw_text(x+210, y+300, "+");
draw_text(x+240, y+300, int64(sc_pl_kickCt(2)));


draw_set_color(#E84B38);

draw_set_halign(fa_left);
draw_text(x, y+360, "화약 공격력");
draw_set_halign(fa_center);
draw_text(x+180, y+360, int64(sc_pl_fireDmg(1)));
draw_text(x+210, y+360, "+");
draw_text(x+240, y+360, int64(sc_pl_fireDmg(2)));

draw_set_halign(fa_left);
draw_text(x, y+390, "집중 회복량");
draw_set_halign(fa_center);
draw_text(x+180, y+390, int64(sc_pl_fireMana(1)));
draw_text(x+210, y+390, "+");
draw_text(x+240, y+390, int64(sc_pl_fireMana(2)));

draw_set_halign(fa_left);
draw_text(x, y+420, "방어 관통");
draw_set_halign(fa_center);
draw_text(x+180, y+420, int64(sc_pl_firePene(1)));
draw_text(x+210, y+420, "+");
draw_text(x+240, y+420, int64(sc_pl_firePene(2)));

draw_set_halign(fa_left);
draw_text(x, y+450, "치명타 확률");
draw_set_halign(fa_center);
draw_text(x+180, y+450, int64(sc_pl_fireCt(1)));
draw_text(x+210, y+450, "+");
draw_text(x+240, y+450, int64(sc_pl_fireCt(2)));

draw_set_halign(fa_left);
draw_text(x, y+480, "치명타 배율");
draw_set_halign(fa_center);
draw_text(x+180, y+480, int64(sc_pl_fireCt(1)));
draw_text(x+210, y+480, "+");
draw_text(x+240, y+480, int64(sc_pl_fireCt(2)));
