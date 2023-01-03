// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03BossCs4(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	
	var soldX	= 290;
	var soldY	= 540;
	var plX		= 1050;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 90;
			isTalk = 7;
			break;
		
		case 2:
			sc_csBase2(soldX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 3:
			BGM_Play(s_mChun, global.volBgm, 0);
			var name = "착호갑사"
			var text = "창귀들이 잠잠해져 와보았는데... \n그대는 보통 인물이 아니구려.";
			isTalk = 8;
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			image_xscale = -1;
			break;
			
		case 4:
			ob_roomControl.isTalk = 8
			sc_csBase2(soldX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 5:
			var name = "착호갑사"
			var text = "이곳이 바로 태조의 어진을 모시던 경기전이 있던 곳이오.";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 6:
			var name = "착호갑사"
			var text = "조선을 세우시기 이전에, 태조께선 훌륭한 장군이셨소\n특히 궁술이 매우 뛰어나셨다고 하오.";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 7:
			var name = "착호갑사"
			var text = "호환으로 고통받던 백성들을 위해 \n태조께서 친히 범을 사냥하셨다는 이야기가 전해지오.";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 8:
			ob_roomControl.isTalk = 8
			sc_csBase2(soldX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 9:
			var name = "착호갑사"
			var text = "창귀를 조종하던 범 형상의 악령은, \n태조께 사냥당한 범이었을 것이오.";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 10:
			var name = "착호갑사"
			var text = "태조와, 그분께서 세우신 조선에 원한을 품고 \n오랜 시간을 기다리다,";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 11:
			var name = "착호갑사"
			var text = "왜란으로 경기전이 불타 무너지고, 조선 팔도가 혼란에 빠지자 \n이를 기회 삼아 소동을 일으킨 게 아닌가 싶소.";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 12:
			ob_roomControl.isTalk = 8;
			sc_csBase2(plX, soldY);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 13:
			var name = "착호갑사"
			var text = "하지만, 덕분에 이 소동도 끝났구려";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 14:
			var name = "착호갑사"
			var text = "소인은 동료의 주검을 수습하고, 관청에 보고하도록 하겠소. \n과거길에 무운이 있길 빌겠소.";
			sc_csBase(name, sp_sold1_face, text, soldX, soldY);
			break;
			
		case 15:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 16:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}