// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_boxMob(){
	if (hp <= 0)
	{
		if (process == 12)
		{
			depth = 100;
			instance_create_layer(x, y, "Instances", mobIndex);
		}
		
		sprite_index = dieSp;
		{
			process++;
			if (process < 6)		{ image_index = 0; }
			else if	(process < 12)	{ image_index = 1; }
			else if	(process < 18)	{ image_index = 2; }
			else if	(process < 24)	{ image_index = 3; }
			else if	(process < 30)	{ image_index = 4; }
			else if	(process < 36)	{ image_index = 5; }
			else if	(process < 42)	{ image_index = 6; }
			else if	(process < 48)	{ image_index = 7; }
			else if	(process < 54)	{ image_index = 8; }
			else
			{
				instance_destroy();
			}
		}
		
	}
	else
	{
		
	}
}