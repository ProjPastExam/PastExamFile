// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03CsEa(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var rpX = 1150;
	var rpY = 540;
	
	if (state == 6) { x += 8; }
	

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(rpX, rpY);
			break;
			
		case 2:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(rpX, rpY);
			break;
			
		case 3:
			var name = "저승사자"
			var text = "이곳은 상태가 말이 아니군.";
			sc_csBase(name, sp_reaper_face, text, rpX, rpY);
			BGM_Play(s_mCs_normal, global.volBgm, 0);
			break;
			
		case 4:
			var name = "저승사자"
			var text = "저승으로 데려가야 하는 악령이 수십 명이라니...\n...밤새 일만 하게 생겼군";
			sc_csBase(name, sp_reaper_face, text, rpX, rpY);
			break;
			
		case 5:
			alarm[1] = 60;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			break;
			
		case 6:
			alarm[1] = 80;
			BGS_Play(s_run, global.vol, 0);
			isTalk = 7;
			break;
			
		case 7:
			alarm[1] = 120;
			BGS_Set(0, 0);
			sc_csBase2(x-70, 560);
			sprite_index = sp_pl_stand;
			isTalk = 5;
			break;
			
		case 8:
			var name = "저승사자"
			var text = "...이런 곳에 사람이? \n명부에도 없는 얼굴인데...";
			sc_csBase(name, sp_reaper_face, text, rpX, rpY);
			break;
			
		case 9:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(rpX, rpY);
			break;
			
		case 10:
			var name = "저승사자"
			var text = "이보시오, 이곳은 악귀들로 위험하오. \n험한 꼴 당하기 싫거든 어서.... 엇?";
			sc_csBase(name, sp_reaper_face, text, rpX, rpY);
			break;
			
		case 11:
			alarm[1] = 120;
			ob_roomControl.isTalk = 7;
			isTalk = 5;
			sc_csBase2(rpX, rpY);
			break;
			
		case 12:
			var name = "저승사자"
			var text = "잠깐,";
			sc_csBase(name, sp_reaper_face, text, rpX, rpY);
			break;
			
		case 13:
			var name = "저승사자"
			var text = "당신에게, 저승에 올라가지 못한 귀신이 붙어있는 게 느껴지오";
			sc_csBase(name, sp_reaper_face, text, rpX, rpY);
			break;
			
		case 14:
			var name = "성춘향"
			var text = "..!!";
			sc_csBase(name, sp_chun_face_angry, text, -500, 500);
			break;
			
		case 15:
			var name = "저승사자"
			var text = "사람의 환각이나 환청 따위가 들리곤 하시오? \n악귀가 붙었다면 내가 도와드릴 수 있소";
			sc_csBase(name, sp_reaper_face, text, rpX, rpY);
			break;
			
		case 16:
			var name = "성춘향"
			var text = "안돼요!";
			sc_csBase(name, sp_chun_face_angry, text, -500, 500);
			break;
			
		case 17:
			alarm[1] = 80;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			BGM_Stop(150);
			break;
			
			
		case 18:
			alarm[1] = 20;
			break;
			
		case 19:
			alarm[1] = 30;
			break;
			
		case 20:
			alarm[1] = 120;
			instance_create_layer(uc_get_x(), uc_get_y(), "effect", ob_whiteOut);
			break;
			
		case 21:
			ob_roomControl.alarm[7] = 1;
			break;
			
			/*
		case 2:
			audio_play_sound(s_talk, 1, false);
			sprite_index = sp_pl_standPeace;
			var name = "???"
			var text = "으아앙!";
			sc_csBase(name, sp_npc_blank, text, -50, 540);
			break;
			
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(1280, 560);
			break;
			
		case 3:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			isTalk = 4;
			alarm[1] = 185;
			break;
			
		case 5:
			
			isTalk = 5;
			alarm[1] = 120;
			break;
		
		case 6:
			audio_play_sound(s_talk, 1, false);
			var name = "어린아이"
			var text = "제발..저좀 도와주세요.. 엉엉";
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
			audio_play_sound(s_talk, 1, false);
			var name = "어린아이"
			var text = "저희 가족들이.. 다른 마을에 볼일이 있어.. \n백마산 길을 지나는데..";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
		
		case 11:
			audio_play_sound(s_talk, 1, false);
			var name = "어린아이"
			var text = "갑자기 왜놈들이 나타나서.. 가족과 일행을 다 잡아갔어요!..";
			sc_csBase(name, sp_cs02_face, text, ii, iy);
			break;
			
		case 12:
			audio_play_sound(s_talk, 1, false);
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
			audio_play_sound(s_talk, 1, false);
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
			sprite_index = sp_pl_walk;
			isTalk = 4;
			alarm[1] = 210;
			break;
			
		case 19:
			ob_roomControl.alarm[7] = 1;
			break;
		*/
		}
	}
}