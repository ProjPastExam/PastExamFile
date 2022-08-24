// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage03BossCs1(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	
	var jumo = 992;
	var hang1 = 505;
	var hang2 = 775;
	
	if (state == 2)		{ x += 8; }
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			BGM_Play(s_mB01_2, global.volBgm, 0);
			alarm[1] = 200;
			isTalk = 4;
			break;
			
		case 2:
			BGS_Play(s_run, global.vol, 0);
			alarm[1] = 100;
			isTalk = 4;
			break;
			
		case 3:
			BGS_Set(0, 0);
			sprite_index = sp_pl_stand;
			ob_roomControl.isTalk = 7;
			sc_csBase2(390, 580);
			isTalk = 4;
			alarm[1] = 150;
			break;
			
		case 4:
			alarm[1] = 300;
			isTalk = 4;
			break;
			
		case 5:
			alarm[1] = 250;
			isTalk = 4;
			break;
		
		case 6:
			var name = "행인 2"
			var text = "백마산에 무슨 일이라도 있소?";
			sc_csBase(name, sp_cs01_face2, text, hang2, 540);
			break;
		
		case 7:
			var name = "주모"
			var text = "왜란때 들어왔던 왜놈 몇몇이 백마산이 제 집인양 들어앉았지 뭐에요!";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 8:
			var name = "주모"
			var text = "행인들이 보이면 모조리 약탈하고 있는데도, \n관청에서는 그냥 작은 산적떼라면서 손을 놓아버렸어요.";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 9:
			var name = "주모"
			var text = "괜히 초상이나 치르지 말고, 여기서 하루 묵고 큰 길로 돌아가셔요.";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 10:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(hang1, 530);
			alarm[1] = 150;
			break;
		
		case 11:
			var name = "행인 1"
			var text = "그럼 그렇게 하는게 좋겠습니다.";
			sc_csBase(name, sp_cs01_face1, text, hang1, 530);
			break;
			
		case 12:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 90;
			break;
			
		case 13:
			alarm[1] = 150;
			image_index = 0;
			sprite_index = sp_cs1_pl2;
			
			break;
		
		case 14:
			alarm[1] = 120;
			sprite_index = sp_pl_walk;
			BGS_Play(s_foot, global.vol, 0);
			break;
			
		case 15:
			ob_roomControl.alarm[7] = 1;
			BGS_Set(0, 30);
			break;
		}
	}
}