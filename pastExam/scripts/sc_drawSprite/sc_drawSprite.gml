// 몬스터 공격 스프라이트

sprite_index = argument0;

mobatkProcess += 1;

if ( atkProcess < 5 )		{	image_index = 0; }
else if ( atkProcess < 10 )	{	image_index = 1; }
else if ( atkProcess < 15 ) {	image_index = 2; }
else if ( atkProcess < 20 ) {	image_index = 3; }
else if ( atkProcess < 25 )	{	image_index = 4; }
else if ( atkProcess < 30 )	{	image_index = 5; }

else image_index = 0;