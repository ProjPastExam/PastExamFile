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


talk1[@0]	= new talkStruct("반가워요. \n원하시면 주막에서 쉬고 가시도록 해요.");
talk1[@1]	= new talkStruct(,,,2,,2,qst1);
talk1[@2]	= new talkStruct(,,,3,qst1Index);

talkq1[@0]	= new talkStruct("백마산을 지나는 여행객들이  \n저희 주막에서 묵고 가곤 해요");
talkq1[@1]	= new talkStruct("주막에서 휴식하면 떨어진 체력을 \n회복할 수 있어요.");
talkq1[@2]	= new talkStruct("선비님도 체력이 많이 떨어지셨다면, \n주막에서 쉬고 가시도록 해요");
talkq1[@3]	= new talkStruct(,,,1 , talk1);

talkq2[@0]	= new talkStruct("왜란이 끝나고, 남은 왜놈 잔당들이 \n백마산에 숨어서 산적질을 일삼고 있어요.");
talkq2[@1]	= new talkStruct("본래 의병장을 이끌던 김세근 장군님이 \n백마산에 터를 잡고 마을을 지켜주셨는데");
talkq2[@2]	= new talkStruct("장군님은 왜란 중에 돌아가시고, \n지금은 백마산이 왜놈들의 소굴이 되었으니, \n장군님이 통곡할 노릇이죠");
talkq2[@3]	= new talkStruct(,,,1 , talk1);
							
talkIndex		= talk1;