// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_boxMain(){
	if (hp < 0)
	{
		sprite_index = dieSp;
		{
			process++;
			if (process < 6)		{ image_index = 0; }
			else if	(process < 12)	{ image_index = 1; }
			else if	(process < 18)	{ image_index = 2; }
			else if	(process < 24)	{ image_index = 3; }
			else if	(process < 50)	{ image_index = 4; }
			else
			{
				image_alpha = (150 - process)/100;
				if (process == 150)	instance_destroy();
			}
		}
		
		if (!isMoney && process > 12)
		{
			global.money += moneyIndex;
			global.moneyBuffer += moneyIndex;
			with (instance_create_layer(x, bbox_bottom, "effect", ob_moneySpawn))
			{
				moneyIndex = other.moneyIndex;
			}
			isMoney = true;
		}
	}
	else
	{
		
	}
}