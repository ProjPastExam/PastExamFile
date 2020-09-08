function sc_playerSprite(argument0) {
	//플레이어 스프라이트 제어 스크립트
	//프로젝트 과거시험
	//작성자 : 이시온
	//스탭 실행 스크립트

	//////////////////////////////////////////////////////////////////////////////////////////
	/*
	0 : 정지
	1 : 걷기
	3 : 대쉬
	4 : 점프
	5 : 하강

	*/
	image_xscale = dir;
	image_speed = 1;

	switch ( argument0 ) {
		case 0:
			sprite_index = sp_playerStandSword;
			break;
	
		case 1:
			sprite_index = sp_playerRunSword;
			break;
		
		case 3:
			sprite_index = sp_playerDashSword;
			break;
		
		case 4:
			sprite_index = sp_playerJumpSword;
			if ( ySpeed < -10 )		image_index = 0;
			else if ( ySpeed < -6 )	image_index = 1;
			else if ( ySpeed < -2 )	image_index = 2;
			else if ( ySpeed < 6 )	image_index = 3;
			else if ( ySpeed < 10 )	image_index = 4;
			else					image_index = 5;
			break;
	}



}
