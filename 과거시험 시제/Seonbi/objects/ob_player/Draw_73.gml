/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sp_uiMiniMp, 0, x, bbox_bottom+50);
if (sk176Index)
{
	var n = 10;
	for (var i = 2; i < n; i++)
	{
		var xI = x+(sk176Index2*i*5);
		var yI = y+60+ ((sk176Index3+(1.5*i))*i*5);
		draw_sprite_ext(sp_pl_sk176Ind, 0, xI, yI,1,1,0,c_white, (n+3-i)/n);
	}
}
sk176Index = false;