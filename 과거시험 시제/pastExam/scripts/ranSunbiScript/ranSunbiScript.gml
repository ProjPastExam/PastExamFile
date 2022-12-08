// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_npc_ranSunbi(){
	if (ranStage1 == 0) {
		ranStage1 = irandom_range(1, 3);
		//ranStage1 = 1;
	}
	if (ranStage2 == 0) {
		ranStage2 = irandom_range(1, 4);
		//ranStage2 = 4;
	}
	
	talk1		= array_create(3);
	talk2		= array_create(3);
	talkq1		= array_create(3);
	talkq2		= array_create(5);
	talkq3		= array_create(2);
	
	qst1		= array_create(3);
	qst1Index	= array_create(2);
	
	
		
	if (global.lan == 0) {
		nameS = "낯선 선비";

		qst1[@0]	= "길흉을 점처본다.";
		qst1[@1]	= "낯선 선비에 관해 물어본다.";
		qst1[@2]	= "그만둔다.";
		qst1Index[@0]	= talkq1;
		qst1Index[@1]	= talkq2;
		qst1Index[@2]	= talkq3;
		
		talk1[@0]	= new talkStruct("반갑소. \n여행길의 길흉을 한번 점처보겠소?");
		talk1[@1]	= new talkStruct(,,,2,,3,qst1);
		talk1[@2]	= new talkStruct(,,,3,qst1Index);
		
		talk2[@0]	= new talkStruct("마음을 바꾸셨소? \n여행길의 길흉을 한번 점처보겠소?");
		talk2[@1]	= new talkStruct(,,,2,,3,qst1);
		talk2[@2]	= new talkStruct(,,,3,qst1Index);
		
		if (ranStage1 == 1) {
			talkq1[@0]	= new talkStruct("흉조부터 시작하겠소. \n적들은 강인한 체력으로 그대의 앞길을 가로막소.",);
		}
		else if (ranStage1 == 2) {
			talkq1[@0]	= new talkStruct("우선 흉조부터, \n적들의 맹렬한 공격을 조심하시오.");
		}
		else if (ranStage1 == 3) {
			talkq1[@0]	= new talkStruct("흉조를 먼저 말씀드리겠소. \n꺾이지 않는 기세를 가진 적들과 마주치게 될 것이오.");
		}
		else if (ranStage1 == 4) {
			talkq1[@0]	= new talkStruct("먼저 흉조요. \n재빠른 적들과 마주치게 될 것이니 조심하시오.");
		}
		
		if (ranStage2 == 1) {
			talkq1[@1]	= new talkStruct("길조를 알려드리겠소. \n상처가 회복되는 행운을 누릴것이오.");
		}
		else if (ranStage2 == 2) {
			talkq1[@1]	= new talkStruct("다음은 길조로, \n그대의 공격은 어느때보다도 맹렬하오.");
		}
		else if (ranStage2 == 3) {
			talkq1[@1]	= new talkStruct("길조를 말씀드리겠소. \n그대의 공격이 적의 급소를 찌를 것이오.");
		}
		else if (ranStage2 == 4) {
			talkq1[@1]	= new talkStruct("이제 길조요. \n재물복이 그대의 앞길에 놓여있소.");
		}
		
		talkq1[@2]	= new talkStruct(,,,1 , talkq1);
		
		talkq2[@0]	= new talkStruct("소인은 어느 한적한 시골의 이름 없는 선비로, \n소일거리로 점괘를 보고 있소.");
		talkq2[@1]	= new talkStruct("점괘는 그대의 길을 가로막는 적들에 대한 것으로, \n흉조와 길조가 하나씩 있소.");
		talkq2[@2]	= new talkStruct("원하신다면 점괘를 봐드리겠소.");
		talkq2[@3]	= new talkStruct(,,,2,,3,qst1);
		talkq2[@4]	= new talkStruct(,,,3 , qst1Index);
		
		talkq3[@0]	= new talkStruct("알겠소. \n괴력난신에 의지하지 않음은 군자다운 선택이오.");
		talkq3[@1]	= new talkStruct(,,,1 , talk2);
	}				
	talkIndex		= talk1;
}