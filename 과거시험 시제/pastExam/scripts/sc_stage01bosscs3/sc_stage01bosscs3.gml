// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01BossCs3(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 12 || state == 13) x = x + 3;
	
	var ii = 720;
	var iy = 540

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 180;
			isTalk = 4;
			break;
			
		case 1:
			ob_roomControl.isTalk = 8;
			sc_csBase2(1450, 520);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 2:
			var name = "성춘향"
			var text = "그래도... 이들의 죽음이 아무런 의미가 없는 건 아니에요.";
			sc_csBase(name, sp_chun_face_angry, text, -500, iy);
			break;
			
		case 3:
			ob_roomControl.isTalk = 6;
			sc_csBase2(1200, 560);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 4:
			var name = "성춘향"
			var text = "이들이 살아생전 느꼈던 고통과 사념들...";
			sc_csBase(name, sp_chun_face_silence, text, -500, iy);
			break;
			
		case 5:
			var name = "성춘향"
			var text = "... 음의 기운들을 제가 모아서, \n당신의 여정을 돕는 힘으로 삼을 수 있어요.";
			sc_csBase(name, sp_chun_face_smile, text, -500, iy);
			break;
		
		case 6:
			var name = "성춘향"
			var text = "이 힘으로 한양까지 도달해, \n조선의 혼란을 바로잡으시는 거예요..!";
			sc_csBase(name, sp_chun_face_angry, text, -500, iy);
			break;
			
		case 7:
			var name = "성춘향"
			var text = "이 산적들처럼, \n살아남기 위해서 잘못된 길로 빠지는 사람들이 \n다시는 생기지 않도록...";
			sc_csBase(name, sp_chun_face_silence, text, -500, iy);
			break;
		case 8:
			ob_roomControl.isTalk = 8;
			sc_csBase2(1200, 560);
			isTalk = 4;
			alarm[1] = 120;
			break
		
		case 9:
			isTalk = 4;
			alarm[1] = 30;
			break
		
		case 10:
			image_index = 0;
			sprite_index = sp_cs02_plStand;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 11:
			image_index = 0;
			sprite_index = sp_pl_standPeace;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 12:
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			isTalk = 4;
			alarm[1] = 90;
			image_xscale = 1;
			break;
			
		case 13:
			isTalk = 4;
			alarm[1] = 120;
			break
			
		case 14:
			BGS_Set(0, 120);
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}