/// @description 투명도 추가
// You can write your code in this editor

image_alpha = 0.8;

sc_npcCreate();
isRest = false;

talk1		= array_create(3);
talk2		= array_create(3);

talk1[@0]	= new talkStruct("산적들이 백성들을 약탈하고 다니는데도, \n이를 해결하지는 못할망정 자기 욕심을 채우는데 \n급급한 사또들도 있어요..!.",,sp_chun_face_angry);
talk1[@1]	= new talkStruct("제가 살던 마을의 변사또라는 놈도, \n왜란 이후의 혼란을 기회 삼아 \n사람들을 수탈하는 아주 못된 놈이었어요.",,sp_chun_face_angry);
talk1[@2]	= new talkStruct("...암행어사가 한번 내려와서 \n놈에게 혼쭐을 내줬으면 좋겠네요.",,sp_chun_face_angry);
talk1[@3]	= new talkStruct(,,,1 , talk1)

talk2[@0]	= new talkStruct("지역을 둘러보다가 쓸만한 물건들을 발견했어요!");
talk2[@1]	= new talkStruct("산적들이 구하긴 어려울법한 물건들도 있는데... \n전쟁의 영향일까요?")
talk2[@2]	= new talkStruct(,,,1 , talk2);
						
						
var i = irandom_range(0, 1);

if (i == 0)			talkIndex = talk1;
else if (i == 1)	talkIndex = talk2;