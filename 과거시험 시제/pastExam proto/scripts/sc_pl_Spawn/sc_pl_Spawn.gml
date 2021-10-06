function sc_pl_Spawn() {
	//플레이어 스폰시 실행되는 스크립트
	//필요 변수 선언, 카메라 생성


	//카메라 생성--------------------------------------------------------------------------------------------
	{
	instance_create_depth(x, y, 0, Camera);
	//uc_enable_room_bounds_enabled(true);
	//uc_set_window_size(1920, 1080);
	//uc_set_view_size(1920,1080);
	//uc_set_window_size();
	uc_set_mode(0);
	uc_set_target_position(x,y);
	//uc_set_auto_scale_enabled();
	}
	
	//기본 변수
	
	jumpLast = 0;
	
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
	
	//공격력 변수
	{
	atkDmgScale	= 1.0;
	
	
	dmgBuff		= 1;
	dmgBuffT	= -1;
	}
	
	//아이템 변수 
	{
	itemCheck	= true;
	isSin		= -1;		//신기전
	isFront		= -1;		//전방 발차기 아이템
	itemJump	= -1;		//점프 액션 아이템
	itemRise	= -1;		//위키 점프 아이템
	}
	
	//스킬 변수
	{
	skMp = array_create(600, 0);
	
	skMp[0]		= 0;	//null	
	skMp[100]	= 200;	//편전
	skMp[101]	= 300;	//총
	skMp[102]	= 200;
	skMp[103]	= 100;
	
	}
}
