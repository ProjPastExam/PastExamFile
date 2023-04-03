// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_csBase(name, face, text, talkX, talkY){

	ob_roomControl.nameS = name[global.lan];
	ob_roomControl.npcFace = face;
	ob_roomControl.talkArray[0] = text[global.lan];
	ob_roomControl.talkX = talkX;
	ob_roomControl.talkY = talkY;
	SE_Play(s_talk, global.vol);
}