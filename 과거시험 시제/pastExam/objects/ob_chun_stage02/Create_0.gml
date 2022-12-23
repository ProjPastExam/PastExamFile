/// @description 투명도 추가
// You can write your code in this editor

image_alpha = 0.8;

sc_npcCreate();
isRest = false;

talk1		= array_create(4);
talk2		= array_create(3);
talk3		= array_create(3);
talk4		= array_create(3);
talk5		= array_create(3);
talk6		= array_create(3);

talk1[@0]	= new talkStruct("김세근 장군님은 왜란 이전부터 왜적의 침입을 예상하고 \n이곳 백마산에서 마을 장정들을 모아 \n군사훈련을 해오셨다고 해요.",,sp_chun_face_angry);
talk1[@1]	= new talkStruct("왜란이 일어나자, 장군님은 의병을 이끌고 \n왜군과 수차례 맞서 싸우다 전사하셨어요.",,sp_chun_face_angry);
talk1[@2]	= new talkStruct("장군님 같은 분들 덕에  \n왜놈들로부터 조선을 지킬 수 있었죠.",,sp_chun_face_angry);
talk1[@3]	= new talkStruct(,,,1 , talk1)

talk2[@0]	= new talkStruct("왜놈들이 숨겨둔 물건들을 발견했어요!");
talk2[@1]	= new talkStruct("행인들에게서 약탈한 물건일까요?");
talk2[@2]	= new talkStruct(,,,1 , talk2);

talk3[@0]	= new talkStruct("왜란의 영향으로 조선 팔도가 혼란하니, \n북쪽의 오랑캐들이 날뛰기 시작한다는 소문이 있어요.",,sp_chun_face_angry);
talk3[@1]	= new talkStruct("왜란으로도 충분히 끔찍했는데... \n큰일이 아니었으면 좋겠어요.",,sp_chun_face_silence);
talk3[@2]	= new talkStruct(,,,1 , talk3);

talk4[@0]	= new talkStruct("왜놈들은 검을 다루는데 능숙하다고 해요.",,sp_chun_face_silence);
talk4[@1]	= new talkStruct("이놈들이 비록 패잔병이라고 해도, \n놈들과 싸울 땐 조심하세요.",,sp_chun_face_angry);
talk4[@2]	= new talkStruct(,,,1 , talk4);

talk5[@0]	= new talkStruct("왜놈들이 사용하던 조총은, \n먼 서쪽 나라 상인들에게서 들여왔다고 해요.",,sp_chun_face_silence);
talk5[@1]	= new talkStruct("서쪽 나라는 어떤 곳일까요? \n무엇이 있을까요?",,sp_chun_face);
talk5[@2]	= new talkStruct(,,,1 , talk5);

talk6[@0]	= new talkStruct("왜란 이전에 왜놈들은 수십 게의 세력으로 나뉘어 \n자기들끼리 피 튀기게 싸웠다고 해요.",,sp_chun_face_silence);
talk6[@1]	= new talkStruct("오랜 싸움으로 인해, \n왜놈들은 무예를 숭상하는 문화를 가지게 되었다고 들었어요.",,sp_chun_face_silence);
talk6[@2]	= new talkStruct(,,,1 , talk6);
						
var i = irandom_range(1, 6);

if (i == 1)			talkIndex = talk1;
else if (i == 2)	talkIndex = talk2;
else if (i == 3)	talkIndex = talk3;
else if (i == 4)	talkIndex = talk4;
else if (i == 5)	talkIndex = talk5;
else if (i == 6)	talkIndex = talk6;