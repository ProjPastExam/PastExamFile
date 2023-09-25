function sc_pl_Spawn() {
	//플레이어 스폰시 실행되는 스크립트
	//필요 변수 선언, 카메라 생성


	//카메라 생성--------------------------------------------------------------------------------------------
	{
	with (instance_create_depth(x, y, 0, Camera))
	{
		
	}
	//uc_enable_room_bounds_enabled(true);
	//uc_set_window_size(1920, 1080);
	//uc_set_view_size(1920,1080);
	//uc_set_window_size();
	uc_set_mode(0);
	uc_set_target_position(x,y);
	//uc_set_auto_scale_enabled();
	}
	
	//기본 변수
	canJump = true;
	mobAcc	= 0;
	
	jumpLast = 0;
	mobCol = true;
	
	//0 : 평시  1 : 기본공격
	canMove = 0;
	
	atkProcess = -1;
	
	spIndex = false;
	
	nextAtk = 0; //연격 변수
	
	hitAfter = 0;
	
	hitEffect = 0;
	
	energy	= 0;
	
	isImort = false;
	
	dProcess = -1;
	
	isDash = true;
	
	isAtk3	= 0;
	
	skState = 0;
	
	spAtk	= 0;
	
	sk176Index	= false;
	sk176Index2	= 0;
	sk176Index3	= 0;
	
	global.skKul[0] = 0;
	global.skKul[1] = 0;
	global.skKul[2] = 0;
	
	//공격력 변수
	{
	atkDmgScale	= 1.0;
	
	
	dmgBuff		= 1;
	dmgBuffT	= -1;
	}
	
	//아이템 변수 
	{
	itemCheck	= false;
	sc_pl_itemCheck();
	}
	
	
}
