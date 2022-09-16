// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage01BossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 4 || state == 5) x = x - 3;
	
	var ii = 720;
	var iy = 540

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 180;
			isTalk = 5;
			break;
			
		case 1:
			var name = "성춘향"
			var text = "해냈어요!";
			sc_csBase(name, sp_chun_face_laugh, text, 480, iy);
			break;
			
		case 2:
			var name = "성춘향"
			var text = "산적들의 우두머리를 물리쳤으니, \n놈들도 한동안은 사람들을 괴롭히지 못할 거예요.";
			sc_csBase(name, sp_chun_face_smile, text, 480, iy);
			break;
			
		case 3:
			ob_roomControl.isTalk = 8;
			sc_csBase2(700, 560);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 4:
			BGS_Play(s_foot, global.vol, 30);
			isTalk = 4;
			alarm[1] = 90;
			sprite_index = sp_pl_walk;
			image_xscale = -1;
			break;
			
		case 5:
			alarm[1] = 50;
			break;
		
		case 6:
			BGS_Set(0, 0);
			image_index = 0;
			sprite_index = sp_cs02_plSit;
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 7:
			sprite_index = sp_cs02_plSitDown;
			isTalk = 4;
			alarm[1] = 50;
			break;
		case 8:
			isTalk = 4;
			alarm[1] = 30;
			break
		
		case 9:
			isTalk = 4;
			alarm[1] = 120;
			break
		
		case 10:
			isTalk = 4;
			alarm[1] = 30;
			break
			
		case 11:
			ob_roomControl.isTalk = 8;
			sc_csBase2(1320, 520);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 12:
			var name = "성춘향"
			var text = "그래요... \n세상이 이렇게 혼란하지 않았더라면, \n이들도 평범한 삶을 살았을지 몰라요...";
			sc_csBase(name, sp_chun_face_silence, text, 1320, 520);
			break;
			
		case 13:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 90;
			break
			
		case 14:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}