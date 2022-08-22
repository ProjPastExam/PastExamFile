/// @description 투명도 추가
// You can write your code in this editor
sc_npcCreate();
//image_alpha = 0.8;

nameS = "성춘향";

talk1		= array_create(3);
talkq1		= array_create(6);
talkq2		= array_create(3);
talkq3		= array_create(5);

qst1		= array_create(3);
qst1Index	= array_create(3);

qst1[@0]	= "이곳은 어디인지";
qst1[@1]	= "무슨 일로 귀신이 되었는지";
qst1[@2]	= "누구를 만나고자 하는지";
qst1Index[@0]	= talkq1;
qst1Index[@1]	= talkq2;
qst1Index[@2]	= talkq3;


talk1[@0]	= new talkStruct("한양까지 갈 길이 멀어요. \n오랜 여정이 될 거 같네요.");
talk1[@1]	= new talkStruct(,,,2,,3,qst1);
talk1[@2]	= new talkStruct(,,,3,qst1Index);

talkq1[@0]	= new talkStruct("음... 그게 말이죠",,sp_chun_face_embar);
talkq1[@1]	= new talkStruct("백마산에서 조금 남쪽에 있는 \n공동묘지 지역이에요.",,sp_chun_face_embar);
talkq1[@2]	= new talkStruct("... 네, 한양에서 좀 더 멀어진 곳이에요.",,sp_chun_face_embar);
talkq1[@3]	= new talkStruct("백마산에서 당신을 빼내는 과정에서, \n음기가 강한 이곳으로 이끌려 오게 되었나 봐요..",,sp_chun_face_embar);
talkq1[@4]	= new talkStruct("... 뭐, 죽는 것보단 여행길이 멀어진 게 낫죠! \n불평하기 없기예요!",,sp_chun_face_angry);
talkq1[@5]	= new talkStruct(,,,1 , talk1);

talkq2[@0]	= new talkStruct("... 제가 죽던 날의 기억은 떠올리고 싶지 않네요.",,sp_chun_face_silence);
talkq2[@1]	= new talkStruct("욕심에 눈이 먼 사또에게 죽임을 당했다, \n정도만 말씀드릴게요",,sp_chun_face_silence);
talkq2[@2]	= new talkStruct(,,,1 , talk1);

talkq3[@0]	= new talkStruct("그분은 아주 훌륭한 분이에요!",,sp_chun_face_laugh);
talkq3[@1]	= new talkStruct("아주 명석하셔서 큰 뜻을 품으신 분이면서도, \n높고 낮음에 연연치 않고 사람을 대하는 올곧은 분이죠.",,sp_chun_face_smile);
talkq3[@2]	= new talkStruct("바라만 보아도 사람 좋게 만드는 분이시지만....",,sp_chun_face_silence);
talkq3[@3]	= new talkStruct("전 이제 사람으로서 그분을 볼 순 없게 되었네요...",,sp_chun_face_silence);
talkq3[@4]	= new talkStruct(,,,1 , talk1);
							
talkIndex		= talk1;