// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_tutoChunCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	//if (state == 0) y = y + 2;
	
	var ix = 1120;
	var iy = 540;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
			
		case 0:
			alarm[1] = 240;
			isTalk = 4;
			break;
		
		case 1:
			alarm[1] = 60;
			sprite_index = sp_cs_plWake1;
			image_index = 0;
			break;
			
		case 2:
			alarm[1] = 120;
			sprite_index = sp_cs_plWake2;
			image_index = 0;
			break;
			
		case 3:
			alarm[1] = 60;
			sprite_index = sp_cs_plWake3;
			image_index = 0;
			break;
			
		case 4:
			isTalk = 5;
			alarm[1] = 60;
			sprite_index = sp_pl_standPeace;
			image_index = 0;
			break;
			
		case 5:
			var name = "????";
			var text = "정신이 좀 드세요?";
			sc_csBase(name, sp_chun_face_laugh, text, ix, iy);
			BGM_Play(s_mChun, global.volBgm, 0);
			break;
			
		case 6:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 7:
			var name = "성춘향";
			var text = "전 성춘향이라고 해요.";
			sc_csBase(name, sp_chun_face_smile, text, ix, iy);
			break;
			
		case 8:
			var name = "성춘향";
			var text = "당신이 백마산에서 수습해주었던 묘의 주인이죠.";
			sc_csBase(name, sp_chun_face_smile, text, ix, iy);
			break;
			
		case 9:
			ob_roomControl.isTalk = 6;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 10:
			var name = "성춘향";
			var text = "그래요.";
			sc_csBase(name, sp_chun_face_smile, text, ix, iy);
			break;
		
		case 11:
			var name = "성춘향";
			var text = "묘에서부터 당신을 지켜보다가,";
			sc_csBase(name, sp_chun_face_smile, text, ix, iy);
			break;
		
		case 12:
			var name = "성춘향";
			var text = "위험에 빠진 당신을 보고 \n제가 좀 도와드렸죠.";
			sc_csBase(name, sp_chun_face_smile, text, ix, iy);
			break;
			
		case 13:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 14:
			var name = "성춘향";
			var text = "당신은 과거길에 오르시는 중이죠?";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 15:
			var name = "성춘향";
			var text = "제가 당신을 도와드린게 \n단지 묘를 수습해주신 게 고마워서는 아니거든요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 16:
			ob_roomControl.isTalk = 6;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 17:
			var name = "성춘향";
			var text = "저는 이미 죽어 귀신이 된 몸이지만, \n저승으로 가기 전에, 한양에 보고싶은 분이 있어요";
			sc_csBase(name, sp_chun_face_silence, text, ix, iy);
			break;
			
		case 18:
			var name = "성춘향";
			var text = "하지만 지금 이 몸으로 먼 길을 가는 것은 어려워 \n고민하고 있었는데...";
			sc_csBase(name, sp_chun_face_angry, text, ix, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 20:
			var name = "성춘향";
			var text = "... 그때 당신이 나타난 거죠!";
			sc_csBase(name, sp_chun_face_laugh, text, ix, iy);
			break;
			
		case 21:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 22:
			var name = "성춘향";
			var text = "설마, 고결한 선비께서 \n생명의 은인이자, 슬픔에 빠진 가녀린 소녀의 간청을 \n못 들은 척 하시진 않으시겠죠?";
			sc_csBase(name, sp_chun_face_smile, text, ix, iy);
			break;
			
		case 23:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 24:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			isTalk = 4
			break;
			
		case 25:
			alarm[1] = 80;
			BGM_Stop(60);
			break;
			
		case 26:
			ob_roomControl.alarm[7] = 1;
			break;
			
		/*
		case 0:
			alarm[1] = 160;
			isTalk = 8;
			break;
			
		case 1:
			alarm[1] = 160;
			sc_csBase2(x, 560);
			isTalk = 4;
			break;
		
		case 2:
			alarm[1] = 30;
			isTalk = 5;
			break;
			
		case 3:
			audio_play_sound(s_talk, 2, false);
			var name = "????";
			var text = "......";
			sc_csBase(name, sp_npc_blank, text, -50, -50);
			break;
			
		case 4:
			isTalk = 5;
			ob_roomControl.isTalk = 4;
			sprite_index = sp_pl_stand;
			alarm[1] = 160;
			audio_play_sound(s_thun, 1, false);
			uc_shake(15, 0.05);
			instance_create_layer(uc_get_x(), uc_get_y(), "effect", ob_whiteIn);
			break;
		
		case 5:
			audio_play_sound(s_talk, 2, false);
			var name = "사무라이";
			var text = "......";
			sc_csBase(name, sp_npc_blank, text, ix, iy);
			break;
			
		case 6:
			isTalk = 4;
			ob_roomControl.isTalk = 4;
			alarm[1] = 20;
			break;
			
		case 7:
			uc_shake(5, 0.05);
			audio_play_sound(s_swing_c2, 1, false);
			alarm[1] = 80;
			break;
			
		case 8:
			audio_play_sound(s_dash01, 1, false);
			alarm[1] = 18;
			break;
			
		case 9:
			alarm[1] = 5;
			break;
			
		case 10:
			alarm[1] = 5;
			break;
			
		case 11:
			alarm[1] = 5;
			uc_shake(10, 0.05);
			audio_play_sound(s_swing_c1, 1, false);
			audio_play_sound(s_plHit, 1, false);
			part_particles_create( global.hitEf, x, y, global.hitEf04T, 1 );
			sprite_index = sp_pl_die;
			image_index = 0;
			break;
			
		case 12:
			alarm[1] = 5;
			image_index = 0;
			break;
			
		case 13:
			alarm[1] = 10;
			image_index = 1;
			break;
			
		case 14:
			alarm[1] = 10;
			image_index = 2;
			break;
			
		case 15:
			alarm[1] = 10;
			image_index = 3;
			break;
			
		case 16:
			alarm[1] = 10;
			image_index = 4;
			break;
			
		case 17:
			alarm[1] = 10;
			image_index = 5;
			break;
			
		case 18:
			alarm[1] = 30;
			image_index = 6;
			break;
			
		case 19:
			ob_roomControl.alarm[7] = 1;
			break;
		*/
		}
	}
}