// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage02VilCs(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 4;
	
	var ii = 720;
	var iy = 540

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 30;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_run, global.vol, 30);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 2:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, 560);
			sprite_index = sp_pl_standPeace;
			isTalk = 4;
			alarm[1] = 120;
			BGS_Set(0, 0);
			break;
			
		case 3:
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 4:
			isTalk = 5;
			alarm[1] = 60;
			break;
			
		case 5:
			BGM_Play(s_mChun, global.volBgm, 0);
			var name = "성춘향"
			var text = "드디어, 백마산 앞 마을까지 돌아왔네요.";
			sc_csBase(name, sp_chun_face_smile, text, -500, iy);
			break;
		
		case 6:
			var name = "성춘향"
			var text = "백마산은 왜란이 한창일 때, \n의병을 일으켜 왜군에게 맞서 싸운 \n김세근 장군님이 활약하던 곳이에요";
			sc_csBase(name, sp_chun_face, text, -500, iy);
			break;
			
		case 7:
			var name = "성춘향"
			var text = "하지만 지금은 왜군 잔당의 소굴이 되어버렸네요";
			sc_csBase(name, sp_chun_face_silence, text, -500, iy);
			break;
			
		case 8:
			var name = "성춘향"
			var text = "왜놈들은 지나가는 행인들을 납치하고 있다고 하니, \n그냥 지나칠 순 없죠..!";
			sc_csBase(name, sp_chun_face_angry, text, -500, iy);
			break;
		
		case 9:
			var name = "성춘향"
			var text = "게다가, 당신은 놈들에게 갚아줘야 할 설욕도 있고요!";
			sc_csBase(name, sp_chun_face_smile, text, -500, iy);
			break;
			
		case 10:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}