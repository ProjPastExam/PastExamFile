// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cs01(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 15 || state == 14) x = x + 3;
	
	var jumo = 992;
	var hang1 = 505;
	var hang2 = 775;
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 350;
			isTalk = 5;
			break;
			
		case 1:
			var name = "행인 1"
			var text = "그럼, 다음 길은 어디로 갑니까?";
			sc_csBase(name, sp_cs01_face1, text, hang1, 530);
			break;
			
		case 2:
			var name = "행인 2"
			var text = "이 앞길을 따라 가다보면 백마산이 나오지, \n산길을 따라가면 다음 마을에 도착할거요.";
			sc_csBase(name, sp_cs01_face2, text, hang2, 540);
			break;
			
		case 3:
			ob_roomControl.isTalk = 7;
			sc_csBase2(jumo, 580);
			isTalk = 5;
			alarm[1] = 150;
			break;
			
		case 4:
			var name = "주모"
			var text = "아이고, 아직 소식도 못들었어요? \n백마산길은 피해가는게 좋을거에요!";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 5:
			ob_roomControl.isTalk = 6;
			isTalk = 5;
			sc_csBase2(hang2, 540);
			alarm[1] = 150;
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
			break;
			
		case 15:
			ob_roomControl.alarm[7] = 1;
			break;
		}
	}
}