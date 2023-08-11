function sc_pl_sprite(argument0) {

	var walkSpeed	= 5.5;
	//image_speed = 1;
	image_xscale = dir;

	switch ( argument0 ) {
		case 0:
			sprite_index = sp_pl_stand;
			if (spAtk == 1) { sprite_index = sp_pl_sk144_stand; }
			else if (spAtk == 2) { sprite_index = sp_pl_sk188_stand; }
			break;
	
		case 1:
			sprite_index = sp_pl_run;
			if (spAtk == 1) { sprite_index = sp_pl_sk144_run; }
			else if (spAtk == 2) { sprite_index = sp_pl_sk188_run; }
			break;
		
		case 2:
			var sp1 = sp_pl_jump1;
			var sp2 = sp_pl_jump2;
			var sp3 = sp_pl_jump3;
			
			if (spAtk == 1) {	//왜검 발도
				sp1 = sp_pl_sk144_jump1;
				sp2 = sp_pl_sk144_jump2;
				sp3 = sp_pl_sk144_jump3;
			}
			else if (spAtk == 2) {	//왜검 발도
				sp1 = sp_pl_sk188_jump1;
				sp2 = sp_pl_sk188_jump2;
				sp3 = sp_pl_sk188_jump3;
			}
			
			sprite_index = sp2;
			if (ySpeed < -7) { sprite_index = sp1; }
			else if (ySpeed < -5) image_index = 0;
			else if (ySpeed < -3) image_index = 1;
			else if (ySpeed < -1) image_index = 2;
			else if (ySpeed < 1) image_index = 3;
			else if (ySpeed < 3) image_index = 4;
			else if (ySpeed < 5) image_index = 5;
			else { sprite_index = sp3; }
			break;
	}


}
