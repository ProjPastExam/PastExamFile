// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage02BossCs3(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var ii = 720;
	var iy = 500;
	
	if (state == 4)	{ x += 5; }

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 150;
			isTalk = 5;
			break;
			
		case 1:
			var name = "성춘향"
			var text = "아이의 부탁대로, \n납치된 사람들을 전부 구했네요!";
			sc_csBase(name, sp_chun_face_laugh, text, 890, iy);
			break;
			
		case 2:
			var name = "성춘향"
			var text = "그럼, 다시 여행길에 올라볼까요? \n한양까지 아직 갈 길이 멀어요!";
			sc_csBase(name, sp_chun_face_smile, text, 890, iy);
			break;
			
		case 3:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			image_xscale = 1;
			isTalk = 4;
			alarm[1] = 240;
			break;
			
		case 5:
			BGS_Set(0, 0);
			isTalk = 4;
			alarm[1] = 90;
			break;
			
		case 6:
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 7:
			ob_roomControl.isTalk = 8;
			sc_csBase2(770, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 8:
			BGM_Play(s_mCs_normal, global.volBgm, 0);
			var name = "김세근 장군"
			var text = "왜란으로 혼란한 조선을 구하고자 \n이곳, 백마산에서 의병을 일으켰었소.";
			sc_csBase(name, sp_st02Cs_kim_face, text, 770, iy);
			break;
			
		case 9:
			var name = "김세근 장군"
			var text = "난 백성들을 위해 왜놈들과 싸우다 \n끝내 목숨을 잃었지만,";
			sc_csBase(name, sp_st02Cs_kim_face, text, 770, iy);
			break;
			
		case 10:
			var name = "김세근 장군"
			var text = "전쟁이 끝나고도 이어지는 혼란과 \n고통에 빠진 백성들을 보며";
			sc_csBase(name, sp_st02Cs_kim_face, text, 770, iy);
			break;
			
		case 11:
			var name = "김세근 장군"
			var text = "죽어서도 마음 편히 \n저승으로 올라갈 수 없었소...";
			sc_csBase(name, sp_st02Cs_kim_face, text, 770, iy);
			break;
			
		case 12:
			ob_roomControl.isTalk = 8;
			sc_csBase2(770, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 13:
			var name = "김세근 장군"
			var text = "허나, 저렇게 훌륭한 선비가 \n도탄에 빠진 백성들을 구원하고, \n조선을 바로잡고자 한다면";
			sc_csBase(name, sp_st02Cs_kim_face, text, 770, iy);
			break;
			
		case 14:
			var name = "김세근 장군"
			var text = "더 이상 남는 미련은 없소이다.";
			sc_csBase(name, sp_st02Cs_kim_face, text, 770, iy);
			break;
			
		case 15:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 16:
			ob_roomControl.isTalk = 8;
			sc_csBase2(510, iy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 17:
			var name = "저승사자"
			var text = "마음이 정리되신 것 같군요.";
			sc_csBase(name, sp_reaper_face, text, 510, iy);
			break;
			
		case 18:
			var name = "저승사자"
			var text = "그럼, 이제 저승으로 올라갑시다.";
			sc_csBase(name, sp_reaper_face, text, 510, iy);
			break;
			
		case 19:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 20:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}