// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_npcBobu01(){
	isRest = false;

	jumoTalk1		= array_create(3);
	jumoTalk2		= array_create(3);
	
	jumoTalk1[@0]	= new talkStruct(2,1,2);
	jumoTalk1[@1]	= new talkStruct(2,2,2);
	jumoTalk1[@2]	= new talkStruct(,,2,,1 , jumoTalk1)
								
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

function sc_npcSmith01()
{
	jumoTalk1		= array_create(3);

	jumoTalk1[@0]	= new talkStruct("4대째 대장간을 이어가고 있는 김개똥이오.");
	jumoTalk1[@1]	= new talkStruct("이곳에서 소지품을 강화할 수 있소.");
	jumoTalk1[@2]	= new talkStruct(,,,1 , jumoTalk1)
							
talkIndex		= jumoTalk1;
}

function sc_npcChild()
{
	talk1		= array_create(3);
	talkq1		= array_create(4);
	talkq2		= array_create(4);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= new questionStruct(10,3);
	qst1[@1]	= new questionStruct(10,4);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct(10,1,3);
	talk1[@1]	= new talkStruct(,,,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(10,9,3);
	talkq1[@1]	= new talkStruct(10,10,3);
	talkq1[@2]	= new talkStruct(10,11,3);
	talkq1[@3]	= new talkStruct(,,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(10,13,3);
	talkq2[@1]	= new talkStruct(10,14,3);
	talkq2[@2]	= new talkStruct(10,15,3);
	talkq2[@3]	= new talkStruct(,,,1 , talk1);
								
	talkIndex		= talk1;
}