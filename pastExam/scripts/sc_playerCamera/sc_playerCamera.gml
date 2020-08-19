function sc_playerCamera() {




	//정수 변수 'camMode'에 따라 카메라 처리
	//[0] : 플레이어 따라가기
	//[1] : 전진시에만 플레이어 따라가기


	if ( camMode == 0 ) {
		uc_init_static(camSpeed);
		uc_set_target_position(x, y);
	
		if (camSpeed < 0.5) { camSpeed += 0.001 }
	}

	if ( camMode == 1 ) {
		uc_init_static(camSpeed);
		uc_set_target_y(y);
		if ( x > camX - 200 )	{ uc_set_target_x(x + 200); }
		if (camSpeed < 0.5) { camSpeed += 0.001 }
	}


	layer_hspeed("Background",-(camX - uc_get_x())/5);

	camX		= uc_get_x();
	camY		= uc_get_y();

	uc_get_x();



}
