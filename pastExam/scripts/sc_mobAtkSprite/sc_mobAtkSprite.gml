// 몬스터 공격 스프라이트
// argument0 : 공격 모션 
// argument1 : 분노상태 모션

mobatkProcess += 1;
sprite_index = argument0;

if ( mobatkProcess < 10 )		{ image_index = 0; }
else if ( mobatkProcess < 20 )	{ image_index = 1; }
else if ( mobatkProcess < 30 )  { 
	image_index = 2; 
	instance_create_depth( x, y, depth-10, ob_mobAtkEffect );
}
else if ( mobatkProcess < 40 )  { image_index = 3; }
else if ( mobatkProcess < 50 )	{ image_index = 4; }
else if ( mobatkProcess < 60 )	{ image_index = 5; }
else { mobatkProcess = 0; }