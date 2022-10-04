/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	var dmg = sc_pl_atkDmg()*(grade*5+5)/10;
	
	process++;
	image_xscale = dir;
	
	if ((state == 1 && process == 12) || ((state == 0 || state == 2)&&process==18)) {
		sc_pl_atkEf(dmg, sc_pl_atkPene(), sc_pl_atkShock(), sc_pl_atkMana(), 
			0, 0, 0, sp_pl_atkEf01, dir);
		SE_Play(s_arrow01, global.vol);
	}
	
	if (process < 6) {
		image_index = 0;
	}
	else if (process < 12) {
		image_index = 1;
	}
	else if (process < 18) {
		image_index = 2;
	}
	else if (process < 24) {
		image_index = 3;
	}
	else {
		instance_destroy();
	}
	
	image_speed = 1;
}
else {
	image_speed = 0;
}


alarm[0] = 1;