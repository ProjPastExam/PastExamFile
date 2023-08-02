/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var index = irandom_range(0, 1);
if (index == 0)
{
	with (instance_create_depth(x+220, y, depth+1, ob_item_sell))
	{
		costIndex += 30;
	}
}
else if (index == 1)
{
	with (instance_create_depth(x+220, y, depth+1, ob_sk_sell))
	{
		costIndex += 30;
	}
}

if (global.hp < 7)
{
	with (instance_create_depth(x+380, y, depth+2, ob_hp_sell))
	{
		//costIndex += 50;
	}
}
else
{
	with (instance_create_depth(x+380, y, depth+2, ob_item_sell))
	{
		costIndex += 30;
	}
}