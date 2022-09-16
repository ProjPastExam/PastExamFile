// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage02BossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 1) x = x + 8;
	
	if (state == 3) {
		with (ob_player) { x += 5; }
	}
	
	var ii = 1520;
	var iy = 450;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 60;
			isTalk = 4;
			break;
			
		case 1:
			BGS_Play(s_run, global.vol, 30);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 2:
			ob_roomControl.isTalk = 7;
			sc_csBase2(x, 560);
			sprite_index = sp_pl_stand;
			isTalk = 4;
			alarm[1] = 120;
			BGS_Set(0, 0);
			break;
			
		case 3:
			alarm[1] = 120;
			isTalk = 4;
			break;
			
		case 4:
			isTalk = 5;
			alarm[1] = 60;
			break;
			
		case 5:
			var name = "성춘향"
			var text = "왜군에게 잡혀간 사람들이에요!";
			sc_csBase(name, sp_chun_face_angry, text, -500, iy);
			break;
		
		case 6:
			var name = "성춘향"
			var text = "어서 구해드려야... \n..앗!";
			sc_csBase(name, sp_chun_face_angry, text, -500, iy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			BGM_Play(s_mB02_1, global.volBgm, 0);
			BGS_Play(s_foot, global.vol, 30);
			alarm[1] = 130;
			break;
			
		case 8:
			isTalk = 5;
			BGS_Set(0, 0);
			alarm[1] = 60;
			break
		
		case 9:
			var name = "사무라이"
			var text = "...";
			sc_csBase(name, sp_jpBoss_face, text, ii, iy);
			break;
		
		case 10:
			var name = "사무라이"
			var text = "용케도 살아서 다시 왔군...";
			sc_csBase(name, sp_jpBoss_face, text, ii, iy);
			break;
			
		case 11:
			var name = "사무라이"
			var text = "...이번에야말로 확실하게 죽여주마";
			sc_csBase(name, sp_jpBoss_face, text, ii, iy);
			break;
			
		case 12:
			isTalk = 4;
			ob_roomControl.isTalk = 4;
			BGM_Stop(60);
			alarm[1] = 60;
			break;
			
		case 13:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}