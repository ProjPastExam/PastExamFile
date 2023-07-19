// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_npc_ranSunbi(){
	isActive = true;
	bIndex = irandom_range(0, 11);

	jumoTalk1		= array_create(3);
	jumoTalk2		= array_create(2);
	
	jumoTalk1[@0]	= new talkStruct(2,1);
	jumoTalk1[@1]	= new talkStruct(2,bIndex+3);
	jumoTalk1[@2]	= new talkStruct(,,,,1 , jumoTalk2)
	
	jumoTalk2[@0]	= new talkStruct(2,bIndex+3);
	jumoTalk2[@1]	= new talkStruct(,,,,1 , jumoTalk2)
								
	talkIndex		= jumoTalk1;
}