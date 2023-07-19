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
	talkq2		= array_create(5);
	
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
	talkq2[@3]	= new talkStruct(6,16,2);
	talkq2[@4]	= new talkStruct(,,2,,1 , talk1);
								
	talkIndex		= talk1;
}

function sc_npcJumo02()
{
	talk1		= array_create(3);
	talkq1		= array_create(4);
	talkq2		= array_create(5);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= new questionStruct(6,27);
	qst1[@1]	= new questionStruct(6,28);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct(6,25,2);
	talk1[@1]	= new talkStruct(,,2,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,2,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(6,33,2);
	talkq1[@1]	= new talkStruct(6,34,2);
	talkq1[@2]	= new talkStruct(6,35,2);
	talkq1[@3]	= new talkStruct(,,,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(6,37,2);
	talkq2[@1]	= new talkStruct(6,38,2);
	talkq2[@2]	= new talkStruct(6,39,2);
	talkq2[@3]	= new talkStruct(6,40,2);
	talkq2[@4]	= new talkStruct(,,,,1 , talk1);
							
	talkIndex		= talk1;
}

function sc_npcJumo03()
{
	talk1		= array_create(3);
	talkq1		= array_create(4);
	talkq2		= array_create(5);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= new questionStruct(6,51);
	qst1[@1]	= new questionStruct(6,52);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct(6,49,2);
	talk1[@1]	= new talkStruct(,,2,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,2,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(6,57,2);
	talkq1[@1]	= new talkStruct(6,58,2);
	talkq1[@2]	= new talkStruct(6,59,2);
	talkq1[@3]	= new talkStruct(,,,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(6,61,2);
	talkq2[@1]	= new talkStruct(6,62,2);
	talkq2[@2]	= new talkStruct(6,63,2);
	talkq2[@3]	= new talkStruct(6,64,2);
	talkq2[@4]	= new talkStruct(,,,,1 , talk1);
							
	talkIndex		= talk1;
}

function sc_npcJumo04()
{
	talk1		= array_create(4);
	
	talk1[@0]	= new talkStruct(6,73,2);
	talk1[@1]	= new talkStruct(6,74,2);
	talk1[@2]	= new talkStruct(6,75,2);
	talk1[@3]	= new talkStruct(,,,,1 , talk1);
							
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

function sc_npcGab()
{
	talk1		= array_create(3);
	talkq1		= array_create(5);
	talkq2		= array_create(4);
	//talkq3		= array_create(5);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= new questionStruct(18,3);
	qst1[@1]	= new questionStruct(18,4);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct(18,1,5);
	talk1[@1]	= new talkStruct(,,5,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,5,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(18,9,5);
	talkq1[@1]	= new talkStruct(18,10,5);
	talkq1[@2]	= new talkStruct(18,11,5);
	talkq1[@3]	= new talkStruct(18,12,5);
	talkq1[@4]	= new talkStruct(,,,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(18,13,5);
	talkq2[@1]	= new talkStruct(18,14,5);
	talkq2[@2]	= new talkStruct(18,15,5);
	talkq2[@3]	= new talkStruct(,,,,1 , talk1);
								
	talkIndex		= talk1;
}

function sc_npcOfficer()
{
	talk1		= array_create(3);
	talkq1		= array_create(4);
	talkq2		= array_create(4);
	//talkq3		= array_create(5);
	
	qst1		= array_create(2);
	qst1Index	= array_create(2);
	
	qst1[@0]	= new questionStruct(22,3);
	qst1[@1]	= new questionStruct(22,4);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	
	
	talk1[@0]	= new talkStruct(22,1,6);
	talk1[@1]	= new talkStruct(,,6,,2,,2,qst1);
	talk1[@2]	= new talkStruct(,,6,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(22,9,6);
	talkq1[@1]	= new talkStruct(22,10,6);
	talkq1[@2]	= new talkStruct(22,11,6);
	talkq1[@3]	= new talkStruct(,,,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(22,13,6);
	talkq2[@1]	= new talkStruct(22,14,6);
	talkq2[@2]	= new talkStruct(22,15,6);
	talkq2[@3]	= new talkStruct(,,,,1 , talk1);
								
	talkIndex		= talk1;
}