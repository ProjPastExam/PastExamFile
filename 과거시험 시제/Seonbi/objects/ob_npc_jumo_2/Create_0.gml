/// @description Insert description here
// You can write your code in this editor

sc_npcCreate();

nameS = "주모";

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