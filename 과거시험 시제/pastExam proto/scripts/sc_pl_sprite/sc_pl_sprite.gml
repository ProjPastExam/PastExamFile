function sc_pl_sprite(argument0) {

	var walkSpeed	= 5.5;
	image_speed = 1;
	image_xscale = dir;

	switch ( argument0 ) {
		case 0:
			sprite_index = sp_pl_stand;
			break;
	
		case 1:
			sprite_index = sp_pl_run;
			break;
		
		case 2:
			sprite_index = sp_pl_jump;
			if (ySpeed < -14) image_index = 0;
			else if (ySpeed < -10) image_index = 1;
			else if (ySpeed < -6) image_index = 2;
			else if (ySpeed < -2) image_index = 3;
			else if (ySpeed < 2) image_index = 4;
			else if (ySpeed < 6) image_index = 5;
			else if (ySpeed < 10) image_index = 6;
			else if (ySpeed < 14) image_index = 7;
			else image_index = 8;
			break;
	}


}
