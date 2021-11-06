// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cs01(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	if (((isT == 4 || isT == 6 || isT == 7) && active == true) || isT == 5) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 350;
			isTalk = 5;
			break;
			
		case 1:
			var name = "행인 1"
			var text = "반갑소\n";
			sc_csBase(name, sp_cs01_face1, text, 1030, 540);
			break;
			
		case 2:
			var name = "행인 2"
			var text = "안녕하시오\n";
			sc_csBase(name, sp_cs01_face2, text, 1280, 550);
			break;
			
		case 3:
			ob_roomControl.isTalk = 7;
			sc_csBase2(1530, 590);
			isTalk = 5;
			alarm[1] = 150;
			break;
			
		case 4:
			var name = "주모"
			var text = "";
			sc_csBase(name, sp_cs01_face2, text, 1280, 550);
			break;
			
		case 5:
			//ob_roomControl.isTalk = 7;
			isTalk = 5;
			sc_csBase2(1280, 550);
			alarm[1] = 150;
			break;
		
		
		
		
		
		}
	}
}