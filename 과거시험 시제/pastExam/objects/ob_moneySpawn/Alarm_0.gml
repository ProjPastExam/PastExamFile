/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var sIndex = 5;
if (moneyIndex > 100) sIndex = 20;

if (moneyIndex > 0)
{
	if (moneyIndex > sIndex)
	{
		moneyIndex -= sIndex;
	}
	else
	{
		moneyIndex = 0;
	}
	
	part_particles_create( global.hitEf, x, y, global.moneyEf[partIndex], 1 );
	partIndex++;
	if (partIndex > 7)	partIndex = 0;
	alarm[0] = 2;
}
else
{
	instance_destroy();
}