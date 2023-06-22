// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03BossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
		
		case 1:
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 2:
			alarm[1] = 1;
			isTalk = 4;
			break;
		/*
		case 2:
			var name = "성춘향"
			var text = "해치운건가요?";
			sc_csBase(name, sp_chun_face_angry, text, 230, 520);
			break;
			
			*/
		case 3:
			ob_roomControl.isTalk = 8;
			sc_csBase2(1170, 520);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			alarm[1] = 70;
			SE_Play(s_cB1_atkG, global.vol);
			isTalk = 4;
			break;
			
		case 5:
			alarm[1] = 20;
			isTalk = 4;
			break;
			
		case 6:
			alarm[1] = 80;
			isTalk = 4;
			SE_Play(s_st3_boss1, global.vol);
			break;
			
		case 7:
			alarm[1] = 10;
			isTalk = 4;
			break;
			
		case 8:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}