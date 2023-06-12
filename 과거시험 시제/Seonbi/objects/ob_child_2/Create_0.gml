/// @description Insert description here
// You can write your code in this editor

sc_npcCreate();

nameS = "아이";

talk1		= array_create(3);
talkq1		= array_create(4);
talkq2		= array_create(4);

qst1		= array_create(2);
qst1Index	= array_create(2);

qst1[@0]	= "지난번에 만난 이후로 어떻게 지냈는지";
qst1[@1]	= "백마산 왜군에 대해";
qst1Index[@0]	= talkq1;
qst1Index[@1]	= talkq2;


talk1[@0]	= new talkStruct("아... 아저씨는..?");
talk1[@1]	= new talkStruct(,,,2,,2,qst1);
talk1[@2]	= new talkStruct(,,,3,qst1Index);

talkq1[@0]	= new talkStruct("... 전 무사히 마을에 도착해서, \n주막 아줌마의 도움으로 지내고 있었어요.");
talkq1[@1]	= new talkStruct("하지만... 왜놈들에게 잡힌 가족들은 \n아직 소식이 없어요....");
talkq1[@2]	= new talkStruct("....훌쩍");
talkq1[@3]	= new talkStruct(,,,1 , talk1);

talkq2[@0]	= new talkStruct("가족과 함께 백마산을 지나던 중, \n왜놈들에게 습격을 받았어요...");
talkq2[@1]	= new talkStruct("놈들은 우리 가족들을 납치해, \n깊은 동굴 속으로 끌고 갔어요...");
talkq2[@2]	= new talkStruct("....훌쩍");
talkq2[@3]	= new talkStruct(,,,1 , talk1);
							
talkIndex		= talk1;