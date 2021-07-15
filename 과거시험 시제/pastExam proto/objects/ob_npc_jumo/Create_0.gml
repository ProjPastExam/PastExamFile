/// @description Insert description here
// You can write your code in this editor
sc_npcCreate();
welcome = "안녕하세요";

talkLine[0] = 2;
talk[0] = array_create(talkLine[0]);

talkLine[1] = 2;
talk[1] = array_create(talkLine[1]);

//대화 첫번째
{
	talk[0][0] = "동해물과";
	talk[0][1] = "백두산이";
}

{
	talk[1][0] = "마르고";
	talk[1][1] = "닳도록";
}