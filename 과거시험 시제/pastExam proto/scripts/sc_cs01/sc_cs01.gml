// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cs01(){
	var state = ob_roomControl.talkCnt;
	
	if ((ob_roomControl.isTalk == 4 && active == true) || ob_roomControl.isTalk == 5) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 350;
			isTalk = 5;
			break;
			
		case 1:
			ob_roomControl.nameS = "행인 1"
			ob_roomControl.npcFace = sp_cs01_face1;
			ob_roomControl.talkArray[0] = "반갑소.\n"
			break;
			
		case 2:
			ob_roomControl.nameS = "행인 2"
			ob_roomControl.npcFace = sp_cs01_face2;
			ob_roomControl.talkArray[0] = "안녕하시오."
			break;
		}
	}
}