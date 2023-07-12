/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

sprite_index = sp_ed2Sold_die;
if ( process < 25 ) process++;
if ( process == 1 ) { 
	uc_shake(8, 0.1);
	SE_Play(s_hitCritical, global.vol);
	SE_Play(s_bandit01die2, global.vol);
	with (instance_create_layer(x, y, "effect", ob_csEffect))
	{
		sprite_index = sp_hitEffect_kick01;
		image_xscale = -1;
	}
}
if ( process < 8 )			{ image_index = 0; x += 15; }
else if ( process < 16 )	{ image_index = 1; x += 10; }
else if ( process < 24 )	{ image_index = 1; x += 5; }
else						{ image_index = 2; }


alarm[1] = 1;