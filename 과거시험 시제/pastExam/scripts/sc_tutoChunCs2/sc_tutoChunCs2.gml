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
			var text = "일어나셨군요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 6:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 7:
			var name = "성춘향";
			var text = "저는 성춘향이라고 해요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 8:
			var name = "성춘향";
			var text = "어느 탐욕스러운 사또에게 목숨을 잃고, \n한이 남아 이승을 떠나지 못하고 있죠.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 9:
			var name = "성춘향";
			var text = "백마산에서 파해쳐진 제 묫자리를 수습해 주신 걸 보고, \n당신을 몰래 따라다녔어요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 10:
			ob_roomControl.isTalk = 8;
			isTalk = 4;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 11:
			isTalk = 5;
			alarm[1] = 60;
			break;
			
		case 12:
			var name = "성춘향";
			var text = "제가 왜 이승에 미련이 남아있는지, \n저승으로 올라가지 않는지 맞춰보실래요?";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 13:
			ob_roomControl.isTalk = 6;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 14:
			var name = "성춘향";
			var text = "저와 사랑을 나누던 분이 있어요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 15:
			var name = "성춘향";
			var text = "청렴한 선비인 그분은, 혼란한 조선을 바로잡으리라 다짐하며 \n한양으로 과거길에 오르셨죠.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 16:
			var name = "성춘향";
			var text = "하지만 그분이 떠나자, \n우리 고을의 부패한 사또는 제게 수청을 들기를 요구했고,";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 17:
			var name = "성춘향";
			var text = "저는 절개를 지키다, 감옥에 갇혀 숨을 거두었죠.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 18:
			ob_roomControl.isTalk = 8;
			isTalk = 4;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 19:
			isTalk = 5;
			alarm[1] = 60;
			break;
			
		case 20:
			var name = "성춘향";
			var text = "저승에 올라가기 전에 마지막으로, 전 그분을 다시 한번 보고 싶어요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 21:
			var name = "성춘향";
			var text = "하지만 이미 죽은 몸으로, 홀로 한양까지 올라가긴 쉽지 않아요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 22:
			ob_roomControl.isTalk = 8;
			isTalk = 4;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 23:
			isTalk = 5;
			alarm[1] = 60;
			break;
			
		case 24:
			var name = "성춘향";
			var text = "백마산을 지나는 당신을 보며, \n전 당신에게 그분의 모습이 보였어요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 25:
			var name = "성춘향";
			var text = "전 당신의 과거길을 따라 한양에 올라가고자 해요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 26:
			var name = "성춘향";
			var text = "방금처럼 당신이 위험에 빠지면 제가 도와드릴수도 있고, \n서로에게 남는 장사죠.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 27:
			ob_roomControl.isTalk = 4;
			isTalk = 5;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 28:
			var name = "성춘향";
			var text = "거절은 거절이에요, 전 당신을 구한 은인이니까요.";
			sc_csBase(name, sp_chun_face, text, ix, iy);
			break;
			
		case 29:
			ob_roomControl.isTalk = 8;
			isTalk = 4;
			sc_csBase2(x, 540);
			alarm[1] = 120;
			break;
			
		case 30:
			alarm[1] = 120;
			break;
			
		case 31:
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