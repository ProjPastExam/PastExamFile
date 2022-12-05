// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01Cs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var hang1 = 1088;
	var hang2 = 800;
	
	if (state == 4) x += 9;
	else if (state == 5) {
		process++
		x += 30;
		if ( process % 4 == 0 ) { 
			part_type_scale( global.dashEf, 1, 1 );
			part_particles_create( global.hitEf2, x, y, global.dashEf, 1 );
		}
	}
	else if (state == 6) {
		process++;
		if (process == 8) {
			with (instance_create_layer(x, y, "effect", ob_csEffect)) {
				sprite_index = sp_pl_atkEf03;
			}
			SE_Play(s_kick01, global.vol);
		}
		
		if (process < 3)		{ image_index = 0; x += 14; }
		else if (process < 8)	{ image_index = 1; x += 16; }
		else if (process < 14)	{ image_index = 2; x += 12; }
		else if (process < 20)	{ image_index = 3; x += 8; }
		else if (process < 25)	{ image_index = 3; x += 4; }
	}
	else if (state == 7) {
		process++;
		if (process == 14) {
			with (instance_create_layer(x, y, "effect", ob_csEffect)) {
				sprite_index = sp_pl_atkEf02;
			}
			SE_Play(s_arrow02, global.vol);
		}
		
		else if (process < 7)	{ image_index = 1; }
		else if (process < 14)	{ image_index = 2; }
		else if (process < 21)	{ image_index = 3; }
		else if (process < 28)	{ image_index = 4; }
		else					{ image_index = 5; }
	}

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 210;
			isTalk = 5;
			break;
			
		case 1:
			var name = "산적"
			var text = "험한 꼴 당하기 싫으면, 순순히 가진 거 다 내놔!";
			BGM_Play(s_mB01_1, global.volBgm, 0);
			sc_csBase(name, sp_bandit_face, text, hang1, 580);
			uc_shake(8, 0.1);
			break;
			
		case 2:
			var name = "행인"
			var text = "히익!";
			sc_csBase(name, sp_civil03Face, text, hang2, 580);
			break;
			
		case 3:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 30;
			break;
			
		case 4:
			sprite_index = sp_pl_run;
			alarm[1] = 40;
			break;
			
		case 5:
			alarm[1] = 18;
			sprite_index = sp_pl_dash;
			process = 0;
			SE_Play(s_dash01, global.vol);
			break;
			
		case 6:
			alarm[1] = 25;
			sprite_index = sp_pl_atkFront2;
			process = 0;
			break;
			
		case 7:
			alarm[1] = 50;
			sprite_index = sp_pl_atk2;
			process = 0;
			break;
			
		case 8:
			isTalk = 7;
			alarm[1] = 10;
			sprite_index = sp_pl_stand;
			break;
			
		case 9:
			isTalk = 5;
			sc_csBase2(hang2, 580);
			alarm[1] = 120;
			break;
			
		case 10:
			sprite_index = sp_pl_standPeace;
			image_xscale = -1;
			var name = "행인"
			var text = "아이구머니나!";
			sc_csBase(name, sp_civil03Face, text, hang2, 580);
			break;
			
		case 11:
			ob_roomControl.isTalk = 4;
			alarm[1] = 20;
			isTalk = 4;
			break;
			
		case 12:
			alarm[1] = 60;
			isTalk = 5;
			break;
			
		case 13:
			var name = "행인"
			var text = "고.. 고맙소!";
			sc_csBase(name, sp_civil01Face, text, 640, 580);
			break;
			
		case 14:
			ob_roomControl.isTalk = 4;
			alarm[1] = 150;
			isTalk = 8;
			break;
			
		case 15:
			alarm[1] = 120;
			isTalk = 4;
			sc_csBase2(x, 560);
			break;
			
		case 16:
			alarm[1] = 56;
			break;
			
		case 17:
			isTalk = 5;
			image_xscale = 1;
			alarm[1] = 80;
			break;
			
		case 18:
			var name = "성춘향"
			var text = "전쟁이 끝난 후, 산적들이 부쩍 늘어났어요.";
			sc_csBase(name, sp_chun_face_silence, text, 1280, 560);
			break;
			
		case 19:
			var name = "성춘향"
			var text = "그런데 관청에서는 이를 진압할 사람이 없다고 \n손을 놓아버리거나...";
			sc_csBase(name, sp_chun_face_angry, text, 1280, 560);
			break;
			
		case 20:
			var name = "성춘향"
			var text = "심지어 욕심 많은 사또들은, 이런 혼란을 기회 삼아 \n자기 잇속이나 채우고 있어요..!";
			sc_csBase(name, sp_chun_face_angry, text, 1280, 560);
			break;
			
		case 21:
			var name = "성춘향"
			var text = "결국 평범한 사람들만 더욱 힘들어지고 있어요..";
			sc_csBase(name, sp_chun_face_silence, text, 1280, 560);
			break;
			
		case 22:
			alarm[1] = 120;
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(1280, 560);
			break;
			
		case 23:
			var name = "성춘향"
			var text = "...이대로 그냥 지나칠 순 없어요. \n사람들을 괴롭히는 산적들을 몰아내야 해요!";
			sc_csBase(name, sp_chun_face_angry, text, 1280, 560);
			break;
			
		case 24:
			var name = "성춘향"
			var text = "저도 최대한 도와드릴게요!";
			sc_csBase(name, sp_chun_face, text, 1280, 560);
			break;
			
		case 25:
			var name = "성춘향"
			var text = "각 지역의 산적들을 전부 몰아내면, \n여정에 필요한 물건들을 찾아드릴 수 있을 거예요.";
			sc_csBase(name, sp_chun_face_smile, text, 1280, 560);
			break;
			
		case 26:
			alarm[1] = 90;
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			BGM_Stop(60);
			break;
			
		case 27:
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