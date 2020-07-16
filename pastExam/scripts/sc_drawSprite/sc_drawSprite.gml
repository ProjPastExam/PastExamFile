// 몬스터 공격 스프라이트

sprite_index = argument0;
xSpeed = 0;
mobatkProcess += 1;

if ( mobatkProcess < 5 )		{	image_index = 0; }
else if ( mobatkProcess < 10 )	{	image_index = 1; }
else if ( mobatkProcess < 15 ) {	image_index = 2; }
else if ( mobatkProcess < 20 ) {	image_index = 3; }
else if ( mobatkProcess < 25 )	{	image_index = 4; }
else if ( mobatkProcess < 30 )	{	image_index = 5; }

else image_index = 0;