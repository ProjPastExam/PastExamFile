/// @description Insert description here
// You can write your code in this editor

sc_npcCreate();
isRest = false;

jumoTalk1		= array_create(4);
jumoTalk2		= array_create(3);

jumoTalk1[@0]	= new talkStruct("하암... 4대째 대장간을 이어가고 있는 김개똥이오.");
jumoTalk1[@1]	= new talkStruct("본래라면 대장간에서 일을 봤지만, \n왜란 때 대장간이 홀랑 불타버렸지 뭐요.");
jumoTalk1[@2]	= new talkStruct("그래서 당분간 대장장이 일은 \n보기 어렵게 됬수다.");
jumoTalk1[@3]	= new talkStruct(,,,1 , jumoTalk2)

jumoTalk2[@0]	= new talkStruct("왜란 때 대장간이 홀랑 불타버렸지 뭐요.");
jumoTalk2[@1]	= new talkStruct("당분간 대장장이 일은 \n보기 어렵게 됬수다.")
jumoTalk2[@2]	= new talkStruct(,,,1 , jumoTalk2);
							
talkIndex		= jumoTalk1;