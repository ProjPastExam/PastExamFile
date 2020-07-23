// 몬스터 공격
// argument0 : 공격 모션 
// argument1 : 분노상태 모션


sprite_index = argument0;
var insx	 = dir * 145;

Attack_delay -= 1;
if ( !Attack_delay ) {
	// 공격
	xSpeed = 0;
	
	// 방향에 따라 xSpeed 초기화
	if(dir >= 0) { 
		instance_create_depth( x-insx+15, y, depth-20, ob_mobAtkEffect );
		xSpeed = -sSpeed;
	}
	else { 
		instance_create_depth( x-insx, y, depth-20, ob_mobAtkEffect );
		xSpeed = sSpeed;
	}
	Attack_delay = Attack_delay_MAX;
	canAttack = false;
	state = 3;
}


// 공격 모션 스프라이트
mobatkProcess += 1;
if ( mobatkProcess < 10 )		{ image_index = 0; }
else if ( mobatkProcess < 20 )	{ image_index = 1; }
else if ( mobatkProcess < 30 )  { image_index = 2; }
else if ( mobatkProcess < 40 )  { image_index = 3; }
else if ( mobatkProcess < 50 )	{ image_index = 4; }
else if ( mobatkProcess < 61 )	{ image_index = 5; }
else { state = 1; mobatkProcess = 0;  }
