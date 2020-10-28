function sc_pl_Spawn() {
	//플레이어 스폰시 실행되는 스크립트
	//필요 변수 선언, 카메라 생성


	//카메라 생성--------------------------------------------------------------------------------------------

	
	instance_create_depth(x, y, 0, Camera);
	uc_enable_room_bounds_enabled(true);
	uc_set_window_size(1920, 1080);
	uc_set_view_size(1920,1080);
	uc_set_mode(0);
	uc_set_target_position(x,y);
	//window_set_fullscreen(true);
	
	jumpLast = 0;
	
	//0 : 평시  1 : 기본공격
	canMove = 0;
	
	atkProcess = -1;
	
	spIndex = false;
	
	nextAtk = 0; //연격 변수
	
	hitAfter = 0;
	
	hitEffect = 0;
	
	energy	= 0;
	
	isEnergy = false;
	
	dProcess = -1;
}
