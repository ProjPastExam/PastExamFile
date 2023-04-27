// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_boxHit(mobId, dmg, mana, hitKind, dir, ctChance, dotStack){ with (mobId) {
	sprite_index = hitSp;
	image_index = 0;

	if (hitKind == 10) hitKind = 1;
	if (hitKind == 11 || hitKind == 12) hitKind = 2;
	
	var ctRange = irandom_range(0, 99);
	var isCt = false;
	var ctAdd = ctChance;
	if (global.item10)	{ ctAdd += (global.item10) * ctChance * 0.5; }
	if (global.item66)	{ ctAdd += global.item66*ctChance*0.5*global.comCt/100; }
	ctChance = ctAdd;
	if (ctRange < ctChance) isCt = true;
	
	var calDmg = dmg;
	if (isCt) {
		calDmg = calDmg * 2;
		/*
		if (hitKind == 0) calDmg = calDmg + sc_pl_atkCtMag();
		else if (hitKind == 1) calDmg = calDmg + sc_pl_kickCtMag();
		else if (hitKind == 2) calDmg = calDmg + sc_pl_fireCtMag();
		*/
	}
	hp -= calDmg;
	var rX = irandom_range(-10, 10);
	var dmgId = instance_create_layer(x + rX, bbox_top - 50, "effect", ob_mobDmg);
	dmgId.dmg = calDmg;
	dmgId.colo = hitKind;
	dmgId.isCt = isCt;
	
	global.mp += mana;
	if (global.mp > global.mpMax) global.mp = global.mpMax;
	
	if (isCt) {
		SE_Play(s_hitCritical, global.vol);
		part_particles_create( global.hitEf, x, y, global.mobCtEf, 1 );
	}
	else {
		SE_Play(s_hit01, global.vol);
	}
	
	
	if (dotStack > 0) {	sc_mobDot(hitKind, dotStack);	}
	
	/*
	if ( isJump && global.item3) {
		part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
		//SE_Play(s_hitJump01, global.vol);
	}
	*/
	switch (hitKind) {
		case 0:
		/*
			if ( ob_atkEf01.image_angle == 35 ) {
				part_type_direction( global.hitEf01T, 0, 70, 0, 0 );
				hitDir = 1;
				//dir = -1;
			}
			else if ( ob_atkEf01.image_angle == 145 ) {
				part_type_direction( global.hitEf01T, 110, 180, 0, 0 );
				hitDir = -1;
				//dir = 1;
			}
			*/
			if ( dir == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				//dir = 1;
			}
			else	{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				//dir = -1;
			}
			//part_type_color_rgb(global.hitEf01T, 180, 180, 180, 180, 255, 255);
			part_type_color3(global.hitEf01T, c_white, c_blue, c_black);

			part_type_scale( global.hitEf02T, 1, 1 );
			
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 15 );
			part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
			break;
			
		case 1:
			if ( dir == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
			}
			part_type_color3(global.hitEf01T, c_white, c_yellow, c_black);
			

			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_k01, 0, 360, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );
			break;
			
		case 2:
			if ( dir == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
	
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );

			}
			part_type_color3(global.hitEf01T, c_white, c_red, c_black);
			

			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_f01, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_f01, 1 );
			break;
	}
}
}

	
