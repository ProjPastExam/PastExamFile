// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_chunSt01() {
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(4);
	talk2		= array_create(3);
	talk3		= array_create(3);
	talk4		= array_create(3);
	talk5		= array_create(3);
	talk6		= array_create(3);
	
	talk1[@0]	= new talkStruct("산적들이 백성들을 약탈하고 다니는데도, \n이를 해결하지는 못할망정 자기 욕심을 채우는데 \n급급한 사또들도 있어요..!.",,sp_chun_face_angry);
	talk1[@1]	= new talkStruct("제가 살던 마을의 변사또라는 놈도, \n왜란 이후의 혼란을 기회 삼아 \n사람들을 수탈하는 아주 못된 놈이었어요.",,sp_chun_face_angry);
	talk1[@2]	= new talkStruct("...암행어사가 한번 내려와서 \n놈에게 혼쭐을 내줬으면 좋겠네요.",,sp_chun_face_angry);
	talk1[@3]	= new talkStruct(,,,1 , talk1)
	
	talk2[@0]	= new talkStruct("지역을 둘러보다가 쓸만한 물건들을 발견했어요!");
	talk2[@1]	= new talkStruct("산적들이 구하긴 어려울법한 물건들도 있는데... \n전쟁의 영향일까요?");
	talk2[@2]	= new talkStruct(,,,1 , talk2);
	
	talk3[@0]	= new talkStruct("안 그래도 왜란으로 다들 힘들었는데, \n산적이 되어 사람들을 약탈하고 다니다니...",,sp_chun_face_angry);
	talk3[@1]	= new talkStruct("참 못된 놈들이에요!",,sp_chun_face_angry);
	talk3[@2]	= new talkStruct(,,,1 , talk3);
	
	talk4[@0]	= new talkStruct("이 사람들도 먹고 살기 힘들었겠지만...",,sp_chun_face_silence);
	talk4[@1]	= new talkStruct("그래도 산적질을 하는 건 잘못된 거죠!",,sp_chun_face_angry);
	talk4[@2]	= new talkStruct(,,,1 , talk4);
	
	talk5[@0]	= new talkStruct("왜란의 영향으로 나라가 혼란하니, \n관청에선 산적들을 무찌를 여력도 없나 봐요.",,sp_chun_face_silence);
	talk5[@1]	= new talkStruct("조선 팔도 곳곳에서 산적 소식이 들린다고 하니, \n험난한 과거길이 되겠네요...",,sp_chun_face_silence);
	talk5[@2]	= new talkStruct(,,,1 , talk5);
	
	talk6[@0]	= new talkStruct("산적들은 과거시험길에 오르는 선비를 \n자주 약탈하고는 했다는데...",,sp_chun_face_silence);
	talk6[@1]	= new talkStruct("당신이 싸우는 걸 보면, \n산적들도 참 먹고살기 힘들겠다는 생각이 드네요.",,sp_chun_face_embar);
	talk6[@2]	= new talkStruct(,,,1 , talk6);
							
	var i = irandom_range(1, 6);
	
	if (i == 1)			talkIndex = talk1;
	else if (i == 2)	talkIndex = talk2;
	else if (i == 3)	talkIndex = talk3;
	else if (i == 4)	talkIndex = talk4;
	else if (i == 5)	talkIndex = talk5;
	else if (i == 6)	talkIndex = talk6;	
}

function sc_chunSt02(){
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
}
	
function sc_chunSt02Vil(){
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(3);
	
	talk1[@0]	= new talkStruct("드디어, 백마산 앞마을까지 돌아왔어요!",,sp_chun_face_angry);
	talk1[@1]	= new talkStruct("왜란 때 후퇴하지 못한 왜놈 잔당들이 백마산에서 산적질을 벌이고 있어요. \n이번에야말로 놈들을 크게 혼내주자고요!",,sp_chun_face_angry);
	talk1[@2]	= new talkStruct(,,,1 , talk1)
	
	talkIndex = talk1;

}

function sc_chunSt03(){
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(4);
	talk2		= array_create(3);
	talk3		= array_create(3);
	talk4		= array_create(3);
	talk5		= array_create(3);
	talk6		= array_create(3);
	
	talk1[@0]	= new talkStruct("태조께선 활솜씨가 매우 뛰어나셨다고 해요.");
	talk1[@1]	= new talkStruct("태조께서 고려의 무인이셨던 시절, \n백성들을 괴롭히던 호랑이를 직접 처치하셨다는 전설도 있어요.");
	talk1[@2]	= new talkStruct("태조의 어진을 모시던 경기전이 왜란으로 불탄 것과, \n창귀들이 날뛰고 있는 것이 무언가 관련이 있을까요?");
	talk1[@3]	= new talkStruct(,,,1 , talk1)
	
	talk2[@0]	= new talkStruct("왜놈들이 숨겨둔 물건들을 발견했어요!");
	talk2[@1]	= new talkStruct("행인들에게서 약탈한 물건일까요?");
	talk2[@2]	= new talkStruct(,,,1 , talk2);
	
	talk3[@0]	= new talkStruct("왜란의 영향으로 조선 팔도가 혼란하니, \n북쪽의 오랑캐들이 날뛰기 시작한다는 소문이 있어요.",,sp_chun_face_angry);
	talk3[@1]	= new talkStruct("왜란으로도 충분히 끔찍했는데... \n큰일이 아니었으면 좋겠어요.",,sp_chun_face_silence);
	talk3[@2]	= new talkStruct(,,,1 , talk3);
	
	talk4[@0]	= new talkStruct("왜놈들은 검을 다루는데 능숙하다고 해요.",,sp_chun_face_silence);
	talk4[@1]	= new talkStruct("이놈들이 비록 산적화된 패잔병이라고 해도, \n놈들과 싸울 땐 조심하세요.",,sp_chun_face_angry);
	talk4[@2]	= new talkStruct(,,,1 , talk4);
	
	talk5[@0]	= new talkStruct("왜놈들이 사용하던 조총은, \n먼 서쪽 나라 상인들에게서 들여왔다고 해요.",,sp_chun_face_silence);
	talk5[@1]	= new talkStruct("서쪽 나라는 어떤 곳일까요? \n무엇이 있을까요?",,sp_chun_face);
	talk5[@2]	= new talkStruct(,,,1 , talk5);
	
	talk6[@0]	= new talkStruct("왜란 이전에 왜놈들은 수십 게의 세력으로 나뉘어 \n자기들끼리 피 튀기게 싸웠다고 해요.",,sp_chun_face_silence);
	talk6[@1]	= new talkStruct("오랜 싸움으로 인해, \n왜놈들은 무예를 숭상하는 문화를 가지게 되었다고 들었어요.",,sp_chun_face_silence);
	talk6[@2]	= new talkStruct(,,,1 , talk6);
	
	
	talkIndex = talk1;
	//var i = irandom_range(1, 6);
	
	//if (i == 1)			talkIndex = talk1;
	//else if (i == 2)	talkIndex = talk2;
	//else if (i == 3)	talkIndex = talk3;
	//else if (i == 4)	talkIndex = talk4;
	//else if (i == 5)	talkIndex = talk5;
	//else if (i == 6)	talkIndex = talk6;
}
	
function sc_chunSt03Vil(){
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(3);
	
	talk1[@0]	= new talkStruct("창귀는 호랑이에게 물려 죽은 귀신이에요. \n사람들을 유인해 호랑이에게 물려 죽도록 만드는 악령이죠.");
	talk1[@1]	= new talkStruct("하지만 창귀가 시체에 들러붙어 움직인다는 말은 처음 들어요... \n무언가 창귀들을 부리고 있는 걸까요?");
	talk1[@2]	= new talkStruct(,,,1 , talk1)

	talkIndex = talk1;

}