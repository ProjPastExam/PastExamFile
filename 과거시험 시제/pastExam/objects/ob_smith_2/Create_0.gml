/// @description Insert description here
// You can write your code in this editor

sc_npcCreate();

talk1		= array_create(3);
talkq1		= array_create(6);
talkq2		= array_create(3);
talkq3		= array_create(5);

qst1		= array_create(3);
qst1Index	= array_create(3);

qst1[@0]	= "소지품 효과 변경에 대해";
qst1[@1]	= "소지품 속성 변경에 대해";
qst1[@2]	= "소지품 효과 강화에 대해";
qst1Index[@0]	= talkq1;
qst1Index[@1]	= talkq2;
qst1Index[@2]	= talkq3;


talk1[@0]	= new talkStruct("4대째 대장간을 이어가고 있는 김개똥이요.");
talk1[@1]	= new talkStruct(,,,2,,3,qst1);
talk1[@2]	= new talkStruct(,,,3,qst1Index);

talkq1[@0]	= new talkStruct("각 소지품에는 고유한 효과 외에도 \n5가지 부과 효과가 있지요.");
talkq1[@1]	= new talkStruct("부가 효과가 마음에 안 든다면");
talkq1[@2]	= new talkStruct("... 네, 한양에서 좀 더 멀어진 곳이에요.");
talkq1[@3]	= new talkStruct("백마산에서 당신을 빼내는 과정에서, \n음기가 강한 이곳으로 이끌려 오게 되었나 봐요..");
talkq1[@4]	= new talkStruct("... 뭐, 죽는 것보단 여행길이 멀어진 게 낫죠! \n불평하기 없기예요!");
talkq1[@5]	= new talkStruct(,,,1 , talk1);

talkq2[@0]	= new talkStruct("... 제가 죽던 날의 기억은 떠올리고 싶지 않네요.");
talkq2[@1]	= new talkStruct("욕심에 눈이 먼 사또에게 죽임을 당했다, \n정도만 말씀드릴게요");
talkq2[@2]	= new talkStruct(,,,1 , talk1);

talkq3[@0]	= new talkStruct("그분은 아주 훌륭한 분이에요!");
talkq3[@1]	= new talkStruct("아주 명석하셔서 큰 뜻을 품으신 분이면서도, \n높고 낮음에 연연치 않고 사람을 대하는 올곧은 분이죠.");
talkq3[@2]	= new talkStruct("바라만 보아도 사람 좋게 만드는 분이시지만....");
talkq3[@3]	= new talkStruct("전 이제 사람으로서 그분을 볼 순 없게 되었네요...");
talkq3[@4]	= new talkStruct(,,,1 , talk1);
							
talkIndex		= talk1;