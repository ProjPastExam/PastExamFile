/// @description Insert description here
// You can write your code in this editor
if		(global.comCt > 20) {
	draw_sprite_ext(sp_pl_comb1, comEffect/4, x, y, 1, 1, 0, c_white, (global.comCt-20)/80);
}

draw_self();
