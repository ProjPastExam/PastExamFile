/// @description Insert description here
// You can write your code in this editor
sc_npcCreate();
nameS = "보부상";
itemGive = false;

talkLine[0] = 3;
talk[0] = array_create(talkLine[0]);

talkLine[1] = 1;
talk[1] = array_create(talkLine[1]);

//대화 첫번째
{
	talk[0][0] = "무사하셨군요!";
	talk[0][1] = "선비님께 산적들의 주의가 끌린 덕에 \n저도 여기까지 올 수 있었습니다.";
	talk[0][2] = "제가 작은 사례를 하죠, \n어쩌다가 손에 넣게 된 물건입니다.";
}

{
	talk[1][0] = "덕분에 마을까지 올 수 있었습니다.";
}