function sc_mobAttack(argument0) {
	// 몬스터 공격
	// argument0 : 공격 모션 
	// argument1 : 분노상태 모션


	sprite_index = argument0;
	var insx	 = dir * 105;
	/*
	if ( Attack_delay == 10 ) {
		xSpeed = 0;
		if(dir >= 0) { 
			instance_create_depth( x-insx+15, y, depth-20, ob_mobAtkEffect );
			xSpeed = -sSpeed;
		}
		else { 
			instance_create_depth( x-insx, y, depth-20, ob_mobAtkEffect );
			xSpeed = sSpeed;
		}
	}*/

	Attack_delay -= 1;
	if ( !Attack_delay ) {
		canAttack = false;
		Attack_delay = Attack_delay_MAX;
	}


	// 공격 모션 스프라이트
	mobatkProcess += 1;
	if ( mobatkProcess < 10 )		{ image_index = 0; }
	else if ( mobatkProcess < 20 )	{ 
		image_index = 1;
	
	}
	else if ( mobatkProcess < 30 )  { image_index = 2;
		if(dir >= 0) { 
			instance_create_depth( x-insx+15, y, depth-200, ob_mobAtkEffect );
			xSpeed = -sSpeed;
		}
		else { 
			instance_create_depth( x-insx, y, depth-200, ob_mobAtkEffect );
			xSpeed = sSpeed;
		}
	}
	else if ( mobatkProcess < 40 )  { image_index = 3; }
	else if ( mobatkProcess < 50 )	{ image_index = 4; }
	else if ( mobatkProcess < 61 )	{ image_index = 5; }
	else { state = 3; mobatkProcess = 0;  }



}
