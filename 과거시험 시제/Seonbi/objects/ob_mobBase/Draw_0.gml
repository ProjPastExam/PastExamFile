/// @description Insert description here
// You can write your code in this editor


draw_self();

if (sk121Index > -1)	draw_sprite(sp_pl_sk126Ef3, int64(sk121Index/5), x, bbox_bottom-96);
/*
if (!isDie) {
	if (!isHpUI) {
		var hpIndex = hp/hpFull;
		if (hpIndex < 0) hpIndex = 0;
		if (hpIndex < 1) {
			draw_sprite(sp_mobHp3, 0, x-39, bbox_bottom+30);
			draw_sprite_ext(sp_mobHp2, 0, x-39, bbox_bottom+30, hpIndex, 1, 0, c_white, 1);
			draw_sprite(sp_mobHp1, 0, x-39, bbox_bottom+30);
		}
	}
	
	if		(global.ranStage1 == 1) { draw_sprite(sp_mobBuf_hp, 0, x, bbox_top - 50); }
	else if	(global.ranStage1 == 2) { draw_sprite(sp_mobBuf_atk, 0, x, bbox_top - 50); }
	else if	(global.ranStage1 == 3) { draw_sprite(sp_mobBuf_down, 0, x, bbox_top - 50); }
}

*/