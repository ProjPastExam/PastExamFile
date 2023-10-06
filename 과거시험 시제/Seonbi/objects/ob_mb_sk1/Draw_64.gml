/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var skMpVar = 0;

skMpVar = (global.skMp[global.sk1]/100);

draw_sprite(sp_mb_sk, 0, x, y);
		
var en = c_white;
if (global.skMp[global.sk1] > global.mp) en = c_gray;
if (global.sk1 >= 100)
{
	draw_sprite_ext(skUi[global.sk1], 0, x, y, 1.5, 1.5, 0, en, 1);
}

draw_sprite_ext(sp_skillUi_black, 0, x, y-55, 1.5, global.skKul[0]/global.skKulData[global.sk1]*1.5, 
	0, c_white, 0.5);

		
//draw_sprite(sprite_index, global.skMp[global.sk1], x, y);









