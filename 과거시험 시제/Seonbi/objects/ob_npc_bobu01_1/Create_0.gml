/// @description Insert description here
// You can write your code in this editor
sc_npcCreate();
nameS = "보부상";

talkLine[0] = 2;
talk[0] = array_create(talkLine[0]);

talkLine[1] = 1;
talk[1] = array_create(talkLine[1]);

//대화 첫번째
{
	talk[0][0] = "안녕하세요! \n전 잡다한 물건을 파는 보부상입니다";
	talk[0][1] = "장사를 위해 마을로 향하는 길인데 \n이 앞길에 산적들이 있어 발이 묶였습니다.";
}

{
	talk[1][0] = "이 앞길을 지나가시려면 조심하시는게 좋을겁니다.";
}