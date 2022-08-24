// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01BossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 4) x = x + 8;
	
	var ii = 720;
	var iy = 640

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 120;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 20;
			SE_Play(s_hit01, global.vol);
			SE_Play(s_bandit01die1, global.vol);
			uc_shake(8, 0.1);
			break;
			
		case 2:
			alarm[1] = 40;
			SE_Play(s_hit01, global.vol);
			SE_Play(s_bandit01die2, global.vol);
			uc_shake(8, 0.1);
			break;
			
		case 3:
			alarm[1] = 60;
			SE_Play(s_hit01, global.vol);
			SE_Play(s_bandit01die3, global.vol);
			uc_shake(8, 0.1);
			break;
			
		case 4:
			BGS_Play(s_run, global.vol, 30);
			isTalk = 5;
			alarm[1] = 90;
			break;
			
		case 5:
			BGS_Set(0, 0);
			sprite_index = sp_pl_stand;
			var name = "산적 두목"
			var text = "거기 멈춰라!";
			sc_csBase(name, sp_banditBoss_face, text, -500, iy);
			uc_shake(10, 0.05);
			BGM_Play(s_mB01_1, global.volBgm, 0);
			break;
		
		case 6:
			ob_roomControl.isTalk = 7;
			sc_csBase2(540, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 7:
			isTalk = 4;
			BGS_Play(s_foot, global.vol, 30);
			alarm[1] = 130;
			break;
			
		case 8:
			isTalk = 5;
			BGS_Set(0, 0);
			alarm[1] = 60;
			break
		
		case 9:
			var name = "산적 두목"
			var text = "거기 멈춰라!";
			sc_csBase(name, sp_banditBoss_face, text, 800, iy);
			break;
		
		case 10:
			var name = "어린아이"
			var text = "저희 가족들이.. 다른 마을에 볼일이 있어.. \n백마산 길을 지나는데..";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
		
		case 11:
			var name = "어린아이"
			var text = "갑자기 왜놈들이 나타나서.. 가족과 일행을 다 잡아갔어요!..";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
			
		case 12:
			var name = "어린아이"
			var text = "어떻게 저만 간신히 도망쳤는데...";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
		
		case 13:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ii, iy);
			isTalk = 5;
			alarm[1] = 150;
			break;
		
		case 14:
			var name = "어린아이"
			var text = "저희 가족들좀 구해주세요!.. 엉엉..";
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