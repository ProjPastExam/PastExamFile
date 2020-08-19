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
			sprite_index = sp_playerUpSword;
			if ( image_index >= 2 ) image_speed = 0;
			break;
		case 5:
			sprite_index = sp_playerDownSword;
			if ( ySpeed < -1 ) image_index = 0;
			if ( image_index >= 2 ) image_speed = 0;
			break;
	}



}
