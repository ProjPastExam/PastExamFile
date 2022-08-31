/// @description Insert description here
// You can write your code in this editor

sc_npcCreate();

nameS = "주모";

talk1		= array_create(3);
talkq1		= array_create(4);
talkq2		= array_create(4);

qst1		= array_create(2);
qst1Index	= array_create(2);

qst1[@0]	= "주막에 대해";
qst1[@1]	= "백마산에 대해";
qst1Index[@0]	= talkq1;
qst1Index[@1]	= talkq2;


talk1[@0]	= new talkStruct("반가워요. \n원하시면 주막에서 쉬고가시도록 해요.");
talk1[@1]	= new talkStruct(,,,2,,2,qst1);
talk1[@2]	= new talkStruct(,,,3,qst1Index);

talkq1[@0]	= new talkStruct("백마산을 지나는 여행");
talkq1[@1]	= new talkStruct("하지만... 왜놈들에게 잡힌 가족들은 \n아직 소식이 없어요....");
talkq1[@2]	= new talkStruct("....훌쩍");
talkq1[@3]	= new talkStruct(,,,1 , talk1);

talkq2[@0]	= new talkStruct("가족과 함께 백마산을 지나던 중, \n왜놈들에게 습격을 받았어요...");
talkq2[@1]	= new talkStruct("놈들은 우리 가족들을 납치해, \n깊은 동굴 속으로 끌고 갔어요...");
talkq2[@2]	= new talkStruct("....훌쩍");
talkq2[@3]	= new talkStruct(,,,1 , talk1);
							
talkIndex		= talk1;