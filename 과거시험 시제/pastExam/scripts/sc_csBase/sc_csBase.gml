// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_csBase(hor, ver, face, talkX, talkY){

	ob_roomControl.nameS = sc_csvToString(textFile, hor+global.lan*2, ver);
	ob_roomControl.npcFace = face;
	ob_roomControl.talkArray[0] = sc_csvToString(textFile, hor+global.lan*2+1, ver);
	ob_roomControl.talkX = talkX;
	ob_roomControl.talkY = talkY;
	SE_Play(s_talk, global.vol);
}

function sc_csBase3(name, face, text, talkX, talkY){

	ob_roomControl.nameS = name;
	ob_roomControl.npcFace = face;
	ob_roomControl.talkArray[0] = text;
	ob_roomControl.talkX = talkX;
	ob_roomControl.talkY = talkY;
	SE_Play(s_talk, global.vol);
}