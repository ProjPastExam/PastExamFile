// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_npcCreate(){
	alarm[0] = 1;
	
	if (talkNum > 0) {
		talk = array_create(talkNum);
		talkLine = array_create(talkNum);
	}
}