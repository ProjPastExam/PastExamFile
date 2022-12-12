/// @description Insert description here
// You can write your code in this editor


draw_self();

if (!isDie) {
	if		(global.ranStage1 == 1) { draw_sprite(sp_mobBuf_hp, 0, x, bbox_top - 50); }
	else if	(global.ranStage1 == 2) { draw_sprite(sp_mobBuf_atk, 0, x, bbox_top - 50); }
	else if	(global.ranStage1 == 3) { draw_sprite(sp_mobBuf_down, 0, x, bbox_top - 50); }
}