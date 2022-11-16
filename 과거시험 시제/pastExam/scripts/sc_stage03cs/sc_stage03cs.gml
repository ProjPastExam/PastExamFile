// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var hang1 = 1088;
	var hang2 = 320;
	
	if (state == 1) x += 4;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_foot, global.vol, 30);
			alarm[1] = 150;
			isTalk = 8;
			break;
			
		case 2:
			BGS_Set(0, 0);
			sprite_index = sp_pl_standPeace;
			alarm[1] = 120;
			isTalk = 4;
			sc_csBase2(x, 560);
			break;
			
		case 3:
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 4:
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 5:
			var name = "성춘향"
			var text = "이 마을은 파손된 건물도 있고, 조금 오싹하네요...?";
			sc_csBase(name, sp_chun_face_silence, text, hang2, 520);
			break;
			
		case 6:
			image_xscale = -1;
			alarm[1] = 120;
			ob_roomControl.isTalk = 6;
			isTalk = 5;
			sc_csBase2(x, 560);
			break;
			
		case 7:
			var name = "성춘향"
			var text = "...예, 귀신이 오싹하다는 말을 다 하다니, \n어처구니없으시겠죠";
			sc_csBase(name, sp_chun_face_embar, text, hang2, 520);
			break;
			
		case 8:
			alarm[1] = 120;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			sc_csBase2(x, 560);
			break;
			
		case 9:
			var name = "착호갑사"
			var text = "";
			sc_csBase(name, sp_npc_blank, text, hang2, 520);
			break;
			
		case 10:
			alarm[1] = 45;
			isTalk = 5;
			break;
			
		case 11:
			var name = "성춘향"
			var text = "저기, 누군가가 있어요!";
			sc_csBase(name, sp_chun_face, text, -500, 520);
			break;
			
		case 12:
			alarm[1] = 90;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			BGM_Stop(90);
			break;
			
		case 13:
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