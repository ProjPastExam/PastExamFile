// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03CsEaEnd(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var rpX = 1150;
	var rpY = 540;
	
	

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 1:
			alarm[1] = 100;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(rpX, rpY);
			break;
			
		case 2:
			alarm[1] = 100;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(rpX, rpY);
			break;
			
		case 3:
			var name = "성춘향"
			var text = "...미안해요.";
			sc_csBase(name, sp_chun_face_silence, text, rpX, rpY);
			BGM_Play(s_mStart, global.volBgm, 0);
			break;
			
		case 4:
			var name = "성춘향"
			var text = "급하게 도망치느라, 이 곳으로 돌아와버렸어요..";
			sc_csBase(name, sp_chun_face_silence, text, rpX, rpY);
			break;
			
		case 5:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(rpX, rpY);
			break;
			
		case 6:
			var name = "성춘향"
			var text = "...하지만 아직은 저승으로 올라갈 수 없어요...";
			sc_csBase(name, sp_chun_face_silence, text, rpX, rpY);
			break;
			
		case 7:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			isTalk = 4;
			break;
			
		case 8:
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