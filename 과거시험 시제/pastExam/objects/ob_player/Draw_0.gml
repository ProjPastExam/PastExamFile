/// @description Insert description here
// You can write your code in this editor
if		(global.comCt < 20) {

}
else if (global.comCt < 40) {
	draw_sprite_ext(sp_pl_comb1, comEffect/4, x, y, 1, 1, 0, c_white, 0.4);
}
else if (global.comCt < 60) {
	draw_sprite_ext(sp_pl_comb1, comEffect/4, x, y, 1, 1, 0, c_white, 0.6);
}
else if (global.comCt < 80) {
	draw_sprite_ext(sp_pl_comb1, comEffect/4, x, y, 1, 1, 0, c_white, 0.8);
}
else {
	draw_sprite_ext(sp_pl_comb1, comEffect/4, x, y, 1, 1, 0, c_white, 1);
}

draw_self();
