// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage04VilCs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1 || state == 8) x = x + 4;
	
	var ii = 220;
	var iy = 520;
	
	var sx = 1152;
	var sy = 580;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 30);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 2:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			sprite_index = sp_pl_standPeace;
			isTalk = 4;
			alarm[1] = 120;
			BGS_Set(0, 0);
			break;
			
		case 3:
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 4:
			isTalk = 7;
			alarm[1] = 60;
			break;
			
		case 5:
			//ob_roomControl.isTalk = 7;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 6:
			var name = "성춘향";
			var text = "저기 누군가 있어요! \n복장을 보아선 높은 관리 같은데...";
			sc_csBase(name, sp_chun_face, text, ii, iy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 8:
			BGS_Play(s_foot, global.vol, 30);
			sprite_index = sp_pl_walk;
			isTalk = 4;
			alarm[1] = 150;
			break;
		
		case 9:
			BGS_Set(0, 0);
			sprite_index = sp_cs02_plSit;
			image_index = 0
			isTalk = 4;
			alarm[1] = 40;
			break;
			
		case 10:
			sprite_index = sp_cs02_plSitDown;
			isTalk = 7;
			alarm[1] = 60;
			break;
			
		case 11:
			isTalk = 5;
			sc_csBase2(sx, sy);
			alarm[1] = 120;
			break;
			
		case 12:
			var name = "감찰사";
			var text = "앗";
			sc_csBase(name, sp_officer1_face, text, sx, sy);
			break;
			
		case 110:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}