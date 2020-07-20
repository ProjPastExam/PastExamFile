// 몬스터 공격 스프라이트
// argument0 : 공격 모션 
// argument1 : 공격 스프라이트 재생 속도

mobatkProcess += 1;
sprite_index = argument0;
var spTime = argument1;


if ( mobatkProcess < spTime*5 )			{ image_index = 0; }
else if ( mobatkProcess < spTime*10 )	{ image_index = 1; }
else if ( mobatkProcess < spTime*15 )	{ image_index = 2; }
else if ( mobatkProcess < spTime*20 )	{ image_index = 3; }
else if ( mobatkProcess < spTime*25 )	{ image_index = 4; }
else if ( mobatkProcess < spTime*30+1 )	{ image_index = 5; }
else { mobatkProcess = 0; }