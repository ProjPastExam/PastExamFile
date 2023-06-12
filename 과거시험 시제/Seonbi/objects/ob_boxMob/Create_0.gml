/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
hp		= maxHp;
isMoney	= false;
process	= 0;

var cIndex = irandom_range(0, 99);
if (cIndex < mobChance)
{
	with (instance_create_depth(x, y, depth, ob_boxBase))
	{
		moneyIndex	= other.moneyIndex;
		maxHp		= other.maxHp
		hp			= other.hp;
	}
	instance_destroy();
}

alarm[0] = 1;