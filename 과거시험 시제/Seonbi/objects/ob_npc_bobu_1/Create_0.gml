/// @description Insert description here
// You can write your code in this editor
sc_npcCreate();
isRest = false;

jumoTalk1		= array_create(3);
jumoTalk2		= array_create(3);

jumoTalk1[@0]	= new talkStruct("전 마을을 오가며 물건들을 판매하는 보부상이오. \n필요한 물건이 있으면 한번 둘러보시오.");
jumoTalk1[@1]	= new talkStruct("다른 물건을 원하신다면 보따리를 더 풀어드릴 수 있소");
jumoTalk1[@2]	= new talkStruct(,,,1 , jumoTalk1)
							
talkIndex		= jumoTalk1;

/*

talkLine[0] = 3;
talk[0] = array_create(talkLine[0]);

talkLine[1] = 2;
talk[1] = array_create(talkLine[1]);

//대화 첫번째
{
	talk[0][0] = "반가워요, \n과거길을 올라가시는 모양이네요.";
	talk[0][1] = "이 앞 산길이 가장 빠른 길이지만, \n왜란 때 건너온 왜놈들 몇몇이 모여 산적질을 하고있어요.";
	if (global.hp = global.hpMax) talk[0][2] = 
		"선비님은 험한 과거길에도 지친 기색이 없으셔서 다행이지만, \n이 앞길은 조심하는게 좋을거에요.";
	else if (global.hp > 5) talk[0][2] = 
		"선비님은 험한 길 오시느라 조금 지치신거 같네요, \n앞길을 위해 주막에서 쉬고가도록 하세요.";
	else talk[0][2] = 
		"선비님은 상당히 지치셨나봐요, \n앞길을 위해 주막에서 쉬고가도록 하세요.";
}

{
	talk[1][0] = "왜란이 끝나고 본국으로 도망치지 못한 몇몇 왜놈들이 모여 \n산적질을 벌이고 있어요.";
	talk[1][1] = "조심하는게 좋을거에요.";
}
*/