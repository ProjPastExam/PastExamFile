// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_cs01(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 13 ) {
		if (alarm[1] == 148) SE_Play(s_cloth1, global.vol);
		if (alarm[1] == 80) SE_Play(s_cloth2, global.vol);
	}
	if (state == 15 || state == 14) x = x + 3;
	
	var name	= array_create(2, "");
	var text	= array_create(2, "");
	
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
			BGM_Play(s_mCs_normal, global.volBgm, 0);
			name[0] = "행인 1"
			text[0] = "그럼, 다음 길은 어디로 갑니까?";
			name[1] = "Passerby 1"
			text[1] = "So, where should we go next?";
			sc_csBase(name, sp_cs01_face1, text, hang1, 530);
			break;
			
		case 2:
			name[0] = "행인 2"
			text[0] = "이 앞길을 따라가다 보면 백마산이 나오지, \n산길을 따라가면 다음 마을에 도착할거요.";
			name[1] = "Passerby 2"
			text[1] = "If we pass Baekma Mountain along this road, we will arrive at the next village.";
			sc_csBase(name, sp_cs01_face2, text, hang2, 540);
			break;
			
		case 3:
			ob_roomControl.isTalk = 7;
			sc_csBase2(jumo, 580);
			isTalk = 5;
			alarm[1] = 150;
			break;
			
		case 4:
			name[0] = "주모"
			text[0] = "아이고, 아직 소식도 못들었어요? \n백마산길은 피해가는게 좋을거에요!";
			name[1] = "Jumo"
			text[1] = "Oh my, haven't you heard the news yet? \nIt's better to avoid the road to Baekma Mountain!";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 5:
			ob_roomControl.isTalk = 6;
			isTalk = 5;
			sc_csBase2(hang2, 540);
			alarm[1] = 150;
			break;
		
		case 6:
			name[0] = "행인 2"
			text[0] = "백마산에 무슨 일이라도 있소?";
			name[1] = "Passerby 2"
			text[1] = "What happened at Baekma Mountain?";
			sc_csBase(name, sp_cs01_face2, text, hang2, 540);
			break;
		
		case 7:
			name[0] = "주모"
			text[0] = "왜란 때 들어왔던 왜놈 몇몇이 \n 백마산이 제 집인 양 들어앉았지 뭐예요!";
			name[1] = "Jumo"
			text[1] = "Some of the Japanese invaders who couldn't go back during the war \nmade themselves at home at Baekma Mountain.";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 8:
			name[0] = "주모"
			text[0] = "행인들이 보이면 모조리 약탈하고 있는데도, \n관청에서는 그냥 작은 산적 떼라면서 손을 놓아버렸어요.";
			name[1] = "Jumo"
			text[1] = "Even though they are plundering everything in sight, \nthe government officials just dismissed them as small bandits and let them be";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 9:
			name[0] = "주모"
			text[0] = "괜히 초상이나 치르지 말고, 여기서 하루 묵고 큰 길로 돌아가셔요.";
			name[1] = "Jumo"
			text[1] = "Don't risk your lives for nothing, \nstay here for the night and head back to the main road tomorrow.";
			sc_csBase(name, sp_jumo_face, text, jumo, 580);
			break;
			
		case 10:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(hang1, 530);
			alarm[1] = 150;
			break;
		
		case 11:
			name[0] = "행인 1"
			text[0] = "그럼 그렇게 하는게 좋겠습니다.";
			name[1] = "Passerby 1"
			text[1] = "Then, I think that's what we should do.";
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