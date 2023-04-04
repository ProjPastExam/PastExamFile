// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_tutoBossCs2(){
	var state = ob_roomControl.talkCnt;
	var isT = ob_roomControl.isTalk;
	if (state == 12) x = x - 10;
	if (state == 13) x = x - 10;
	if (state == 14) x = x - 8;
	if (state == 15) x = x - 6;
	if (state == 16) x = x - 4;
	if (state == 17) x = x - 2;

	
	var ix = 1700;
	var iy = 480;
	
	var name	= array_create(2, "");
	var text	= array_create(2, "");
	
	if (((isT == 4 || isT == 5 || isT == 6 || isT == 7 || isT == 8) && active == true)) {
		active = false;
		switch (state) {

			
			
		case 0:
			alarm[1] = 160;
			isTalk = 8;
			break;
			
		case 1:
			alarm[1] = 160;
			sc_csBase2(x, 560);
			isTalk = 4;
			break;
		
		case 2:
			alarm[1] = 30;
			isTalk = 5;
			break;
			
		case 3:
			name[0] = "????";
			text[0] = "......";
			name[1] = "????";
			text[1] = "......";
			sc_csBase(name, sp_jpBoss_face, text, -50, -50);
			break;
			
		case 4:
			isTalk = 5;
			BGM_Play(s_mB02_1, global.volBgm, 0);
			ob_roomControl.isTalk = 4;
			sprite_index = sp_pl_stand;
			alarm[1] = 160;
			SE_Play(s_thun, global.vol);
			uc_shake(15, 0.05);
			instance_create_layer(uc_get_x(), uc_get_y(), "effect", ob_whiteIn);
			break;
		
		case 5:
			name[0] = "사무라이";
			text[0] = "......";
			name[1] = "Samurai"
			text[1] = "......";
			sc_csBase(name, sp_jpBoss_face, text, ix, iy);
			break;
			
		case 6:
			isTalk = 4;
			ob_roomControl.isTalk = 4;
			alarm[1] = 20;
			break;
			
		case 7:
			uc_shake(5, 0.05);
			SE_Play(s_swing_c2, global.vol);
			alarm[1] = 80;
			break;
			
		case 8:
			SE_Play(s_dash01, global.vol);
			alarm[1] = 18;
			break;
			
		case 9:
			alarm[1] = 5;
			break;
			
		case 10:
			alarm[1] = 5;
			break;
			
		case 11:
			alarm[1] = 5;
			uc_shake(10, 0.05);
			SE_Play(s_swing_c1, global.vol);
			SE_Play(s_plHit, global.vol);
			part_particles_create( global.hitEf, x, y, global.hitEf04T, 1 );
			sprite_index = sp_pl_die;
			image_index = 0;
			break;
			
		case 12:
			alarm[1] = 5;
			image_index = 0;
			break;
			
		case 13:
			alarm[1] = 10;
			image_index = 1;
			break;
			
		case 14:
			alarm[1] = 10;
			image_index = 2;
			break;
			
		case 15:
			alarm[1] = 10;
			image_index = 3;
			break;
			
		case 16:
			alarm[1] = 10;
			image_index = 4;
			break;
			
		case 17:
			alarm[1] = 10;
			image_index = 5;
			break;
			
		case 18:
			alarm[1] = 30;
			image_index = 6;
			BGM_Stop(30);
			break;
			
		case 19:
			ob_roomControl.alarm[7] = 1;
			break;
		
		}
	}
}