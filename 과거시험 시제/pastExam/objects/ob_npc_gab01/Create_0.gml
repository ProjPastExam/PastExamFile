/// @description Insert description here
// You can write your code in this editor


sc_npcCreate();
//image_alpha = 0.8;


talk1		= array_create(3);
talkq1		= array_create(6);
talkq2		= array_create(4);
//talkq3		= array_create(5);

qst1		= array_create(2);
qst1Index	= array_create(2);

qst1[@0]	= "이곳은 어디인지";
qst1[@1]	= "무엇을 하고 있는지";
qst1Index[@0]	= talkq1;
qst1Index[@1]	= talkq2;


talk1[@0]	= new talkStruct("과거길에 오르시는 중이오? \n이 지역은 매우 위험하오....");
talk1[@1]	= new talkStruct(,,,2,,2,qst1);
talk1[@2]	= new talkStruct(,,,3,qst1Index);

talkq1[@0]	= new talkStruct("이곳은 태조의 어진을 모시던 \n경기전이 있었던 곳이오.");
talkq1[@1]	= new talkStruct("왜란으로 경기전이 불타버린 후, \n전주에 호환 소식이 부쩍 늘어났소.");
talkq1[@2]	= new talkStruct("허나 직접 와서 보니, \n단순한 호환 따위가 아니오.");
talkq1[@3]	= new talkStruct("범에게 당한 시체에 창귀가 들러붙어, \n그야말로 시체들이 걸어 다니고 있소.");
talkq1[@4]	= new talkStruct("지금 이 앞은 매우 위험하니, \n지나가지 않는 게 최선이오.");
talkq1[@5]	= new talkStruct(,,,1 , talk1);

talkq2[@0]	= new talkStruct("소인은 호환을 막기 위해 임명된 착호갑사로, \n전주의 호환 소식을 듣고 왔소.");
talkq2[@1]	= new talkStruct("허나 창귀가 들러붙은 시체들에게 동료를 잃고, \n간신히 홀로 도망쳤소.");
talkq2[@2]	= new talkStruct("지금 이 앞은 매우 위험하니, \n지나가지 않는 게 최선이오.");
talkq2[@3]	= new talkStruct(,,,1 , talk1);
							
talkIndex		= talk1;