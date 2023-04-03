// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cs02(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1 || state == 18 || state == 19) x = x + 3;
	
	var name	= array_create(2, "");
	var text	= array_create(2, "");
	
	var ii = 720;
	var iy = 640

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 180;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 60);
			alarm[1] = 180;
			isTalk = 5;
			break;
			
		case 2:
			BGS_Set(0, 0);
			BGM_Play(s_mB01_1, global.volBgm, 0);
			SE_Play(s_talk, global.vol);
			sprite_index = sp_pl_standPeace;
			name[0] = "????"
			text[0] = "으아앙!";
			name[1] = "????"
			text[1] = "Ahhh!"
			sc_csBase(name, sp_npc_blank, text, -50, 540);
			uc_shake(10, 0.05);
			break;
			
		case 3:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			BGS_Play(s_run, global.vol, 30);
			isTalk = 4;
			alarm[1] = 185;
			break;
			
		case 5:
			BGS_Set(0, 0);
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 6:
			name[0] = "어린아이"
			text[0] = "제발.. 저 좀 도와주세요.. 엉엉";
			name[1] = "Child"
			text[1] = "Please... help me...";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 6;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 8:
			
			image_index = 0;
			sprite_index = sp_cs02_plSit;
			isTalk = 4;
			alarm[1] = 60;
			break;
		
		case 9:
			sprite_index = sp_cs02_plSitDown;
			isTalk = 5;
			alarm[1] = 100;
			break;
		
		case 10:
			name[0] = "어린아이"
			text[0] = "저희 가족들이.. 다른 마을에 볼일이 있어.. \n백마산 길을 지나는데..";
			name[1] = "Child"
			text[1] = "My family... have some business in another village... \nso we were passing through the Baekma Mountain trail...";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
		
		case 11:
			name[0] = "어린아이"
			text[0] = "갑자기 왜놈들이 나타나서.. 가족과 일행을 다 잡아갔어요!..";
			name[1] = "Child"
			text[1] = "Suddenly, some invaders appeared and took away my family!";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
			
		case 12:
			name[0] = "어린아이"
			text[0] = "어떻게 저만 간신히 도망쳤는데...";
			name[1] = "Child"
			text[1] = "How could I barely manage to escape alone...";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
		
		case 13:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 150;
			break;
		
		case 14:
			name[0] = "어린아이"
			text[0] = "저희 가족들 좀 구해주세요!.. 엉엉..";
			name[1] = "Child"
			text[1] = "Please save my family!..";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
			
		case 15:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 150;
			break;
			
		case 16:
			image_index = 0;
			sprite_index = sp_cs02_plStand;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 17:
			image_index = 0;
			sprite_index = sp_pl_standPeace;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 18:
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			isTalk = 4;
			alarm[1] = 210;
			break;
			
		case 19:
			BGS_Set(0, 120);
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}