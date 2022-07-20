/// @description 투명도 추가
// You can write your code in this editor
sc_npcCreate();
image_alpha = 0.8;

nameS = "성춘향";

talkLine[0] = 3;
talk[0] = array_create(talkLine[0]);

talkLine[1] = 1;
talk[1] = array_create(talkLine[1]);

//대화 첫번째
{
	talk[0][0] = "한양까지 가려면 ";
	talk[0][1] = "장사를 위해 마을로 향하는 길인데 \n이 앞길에 산적들이 있어 발이 묶였습니다.";
	talk[0][2] = "한양까지 단숨에 올라가보자구요!";
}

{
	talk[1][0] = "이 앞길을 지나가시려면 조심하시는게 좋을겁니다.";
}