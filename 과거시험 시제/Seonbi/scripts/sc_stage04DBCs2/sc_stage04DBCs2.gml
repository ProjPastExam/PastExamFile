// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_stage04DBCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 2) x = x + 4;
	
	var ix = 1350;
	var iy = 600;
	
	var dx = 960;
	var dy = 580;
	
	var sx = 960;
	var sy = 620;
	
	var csvHor = 24;

	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7) && active == true)) {
		active = false;
		switch (state) {
		case 0:
			alarm[1] = 90;
			isTalk = 4;
			break;
			
		case 1:
			ob_roomControl.isTalk = 8;
			sc_csBase2(x, sy);
			alarm[1] = 120;
			break;
			
		case 2:
			ob_roomControl.isTalk = 4;
			alarm[1] = 120;
			isTalk = 4;
			BGS_Play(s_foot, global.vol, 0);
			sprite_index = sp_pl_walk;
			break;
			
		case 3:
			BGS_Set(0, 0);
			image_index = 0;
			sprite_index = sp_cs02_plSit;
			alarm[1] = 60;
			break;
			
		case 4:
			sprite_index = sp_cs02_plSitDown;
			alarm[1] = 80;
			break;
			
		case 5:
			isTalk = 5;
			alarm[1] = 80;
			break;
		
		case 6:
			//ob_roomControl.isTalk = 5;
			isTalk = 5;
			sc_csBase(csvHor, 1, sp_chun_face_angry, dx, dy);
			break;
			
		case 7:
			ob_roomControl.isTalk = 8;
			sc_csBase2(ix-20, iy+40);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 8:
			sc_csBase(csvHor, 2, sp_npc_blank, ix-20, iy+40);
			break;
		
		case 9:
			ob_roomControl.isTalk = 7;
			sc_csBase2(dx, dy);
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 10:
			ob_roomControl.isTalk = 4;
			image_index = 0;
			sprite_index = sp_cs02_plStand;
			alarm[1] = 60;
			break;
		
		case 11:
			ob_roomControl.isTalk = 8;
			sprite_index = sp_pl_standPeace;
			isTalk = 5;
			sc_csBase2(ix+30, iy);
			alarm[1] = 120;
			break;
			
		case 12:
			sc_csBase(csvHor, 3, sp_npc_blank, ix+30, iy);
			isTalk = 5;
			break;
			
		case 13:
			sc_csBase(csvHor, 4, sp_chun_face_embar, dx, dy);
			isTalk = 4;
			break;
			
		case 14:
			ob_roomControl.isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 15:
			ob_roomControl.isTalk = 8;
			isTalk = 5;
			sc_csBase2(ix, iy);
			alarm[1] = 120;
			break;
			
		case 16:
			sc_csBase(csvHor, 5, sp_seon_face, ix, iy);
			isTalk = 4;
			break;
			
		case 17:
			sc_csBase(csvHor, 6, sp_dokBoss_face, sx, sy);
			break;
			
		case 18:
			SE_Play(s_dokBossCs, global.vol);
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 210;
			break;
			
		case 19:
			isTalk = 4;
			alarm[1] = 60;
			break;
			
		case 20:
			ob_roomControl.isTalk = 8;
			sc_csBase2(sx-30, sy);
			isTalk = 5;
			alarm[1] = 120;
			break;
			
		case 21:
			sc_csBase(csvHor, 7, sp_dokBoss_face2, sx-30, sy);
			BGM_Play(s_mB04_2, global.volBgm, 0);
			break;
			
		case 22:
			ob_roomControl.isTalk = 4;
			isTalk = 4;
			alarm[1] = 120;
			break;
			
		case 23:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}