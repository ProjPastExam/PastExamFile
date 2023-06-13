// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_npcBobu01(){
	isRest = false;

	jumoTalk1		= array_create(3);
	jumoTalk2		= array_create(3);
	
	jumoTalk1[@0]	= new talkStruct(2,1);
	jumoTalk1[@1]	= new talkStruct(2,2);
	jumoTalk1[@2]	= new talkStruct(,,,,1 , jumoTalk1)
								
	talkIndex		= jumoTalk1;

}


function sc_npcJumo01()
{
	talk1		= array_create(3);
	talkq1		= array_create(4);
	talkq2		= array_create(4);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= new questionStruct(6,3);
	qst1[@1]	= new questionStruct(6,4);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct(6,1,2);
	talk1[@1]	= new talkStruct(,,2,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,2,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(6,9,2);
	talkq1[@1]	= new talkStruct(6,10,2);
	talkq1[@2]	= new talkStruct(6,11,2);
	talkq1[@3]	= new talkStruct(,,2,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(6,13,2);
	talkq2[@1]	= new talkStruct(6,14,2);
	talkq2[@2]	= new talkStruct(6,15,2);
	talkq2[@3]	= new talkStruct(,,2,,1 , talk1);
								
	talkIndex		= talk1;
}

function sc_npcJumo02()
{
	talk1		= array_create(3);
	talkq1		= array_create(3);
	talkq2		= array_create(3);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= "주막에 대해";
	qst1[@1]	= "백마산 마을 주모?";
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct("반가워요. \n원하시면 주막에서 쉬고 가시도록 해요.");
	talk1[@1]	= new talkStruct(,,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct("주막에서 휴식하면 떨어진 체력을 \n회복할 수 있어요.");
	talkq1[@1]	= new talkStruct("선비님도 체력이 많이 떨어지셨다면, \n주막에서 쉬고 가시도록 해요");
	talkq1[@2]	= new talkStruct(,,,1 , talk1);
	
	talkq2[@0]	= new talkStruct("아, 제 사촌동생과 만난 적이 있으신가 봐요?");
	talkq2[@1]	= new talkStruct("저희 집 여자들은 전국 곳곳에서 주막을 차렸거든요. \n여행 중에 만나거든 안부 좀 전해주시면 고맙겠어요.");
	talkq2[@2]	= new talkStruct(,,,1 , talk1);
							
	talkIndex		= talk1;
}

function sc_npcSmith01()
{
	jumoTalk1		= array_create(3);

	jumoTalk1[@0]	= new talkStruct(10,1,3);
	jumoTalk1[@1]	= new talkStruct(10,2,3);
	jumoTalk1[@2]	= new talkStruct(,,3,,1 , jumoTalk1)
	
	talkIndex		= jumoTalk1;
}

function sc_npcChild()
{
	talk1		= array_create(3);
	talkq1		= array_create(4);
	talkq2		= array_create(4);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= new questionStruct(14,3);
	qst1[@1]	= new questionStruct(14,4);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct(14,1,4);
	talk1[@1]	= new talkStruct(,,4,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,4,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(14,9,4);
	talkq1[@1]	= new talkStruct(14,10,4);
	talkq1[@2]	= new talkStruct(14,11,4);
	talkq1[@3]	= new talkStruct(,,4,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(14,13,4);
	talkq2[@1]	= new talkStruct(14,14,4);
	talkq2[@2]	= new talkStruct(14,15,4);
	talkq2[@3]	= new talkStruct(,,4,,1 , talk1);
	
	talkIndex		= talk1;
}