// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobHit( argument0 ){
	var plX = sc_pl_get("x");
	var dmg = 0;
	var dmgId;
	var xs = 1;
	//isHostile = true;
	ad = true;
	//state = 10;
	patrol = true;
	switch ( argument0 ) {
		
		case 0:
			var shock = ob_atkEf01.shock;
			var mpUp = ob_atkEf01.mpUp;
			if (shock < 0) shock = 0;
			var shVal = (shock- down)/10;
			
			if ( knockback ) { 
				if ( state == 8 ) { process = 16; ySpeed = -11; }
				else if (!isDA) { state = 5; process = shVal; }
			}
			//else { stun += shock; }
			process = int64(process);
			hitAfter = ob_atkEf01.hitAfter;
			
			dmg = sc_mobDmg(ob_atkEf01.damage, ob_atkEf01.pene);

			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += mpUp;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
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
			else if ( ob_atkEf01.image_xscale == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				xs = -1;
				hitDir = -1;
				//dir = 1;
			}
			else	{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				xs = 1;
				hitDir = 1;
				//dir = -1;
			}
			//part_type_color_rgb(global.hitEf01T, 180, 180, 180, 180, 255, 255);
			part_type_color3(global.hitEf01T, c_white, c_blue, c_black);
			uc_shake(sqrt(shock)/2.5, 0.15);
			audio_play_sound(s_hit01, 5, false);
			
			if ( shock < 150 ) part_type_scale( global.hitEf02T, xs * 0.6, 0.6 );
			else if ( shock < 200 ) part_type_scale( global.hitEf02T, xs * 0.8, 0.8 );
			else if ( shock < 250 ) part_type_scale( global.hitEf02T, xs * 1, 1 );
			else part_type_scale( global.hitEf02T, xs * 1.2, 1.2 );
			
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 15 );
			part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
			break;

		case 1:
			//if (knockback) state = 10;
			hitAfter = 30;
			dmg = 40;
			hp -= dmg;
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			xSpeed = 0;
			
			audio_play_sound(s_hit01, 5, false);
			part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );
			
			break;
			
		case 2:
			var mpUp = ob_atkEf03.mpUp;
			var shock = ob_atkEf03.shock;
			var shVal = (shock - down)/10;
			if ( knockback ) { 
				if ( state == 8 ) { process = 20; ySpeed = -11; }
				else if (!isDK) { state = 6; process = shVal; }
			}
			process = int64(process);
			hitAfter = ob_atkEf03.hitAfter;
			
			dmg = sc_mobDmg(ob_atkEf03.damage, ob_atkEf03.pene);
			
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += mpUp;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			xSpeed = 0;
			
			if ( ob_atkEf03.image_xscale == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
				//dir = 1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
				//dir = -1;
			}
			part_type_color3(global.hitEf01T, c_white, c_yellow, c_black);
			
			uc_shake(sqrt(shock)/2.5, 0.15);
			audio_play_sound(s_hit01, 5, false);
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_k01, 0, 360, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );
			break;
			
		case 3:
			var mpUp = ob_atkEf04.mpUp;
			var shock = ob_atkEf04.shock;
			var shVal = (shock - down)/10;
			if ( knockback ) { 
				if ( state == 8 ) { ySpeed = -12; process = 18; }
				else if (!isDK) {state = 7; ySpeed = -16; process = 18;}
			}
			process = int64(process);
			hitAfter = ob_atkEf04.hitAfter;
			
			dmg = sc_mobDmg(ob_atkEf04.damage, ob_atkEf04.pene);
			
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += mpUp;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			xSpeed = 0;
			
			if ( ob_atkEf04.image_xscale == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
				//dir = 1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
				//dir = -1;
			}
			part_type_color3(global.hitEf01T, c_white, c_yellow, c_black);
			
			uc_shake(sqrt(shock)/2.5, 0.15);
			audio_play_sound(s_hit01, 5, false);
			part_type_scale( global.hitEf02T, 1.5, 1.5 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_k01, 0, 360, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );
			break;
			
		case 4:
			var mpUp = ob_atkEf05.mpUp;
			var shock = ob_atkEf05.shock;
			var shVal = (shock - down)/10;
			if ( knockback ) { 
				if ( state == 8 ) { process = 15; ySpeed = -9; }
				else if ( !isDF ) {state = 7; ySpeed = -9; process = shVal;}
			}
			process = int64(process);
			hitAfter = ob_atkEf05.hitAfter;
			
			dmg = sc_mobDmg(ob_atkEf05.damage, ob_atkEf05.pene);
			
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += mpUp;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			xSpeed = 0;
			
			if ( ob_atkEf05.image_xscale == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
				//dir = 1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
				//dir = -1;
			}
			part_type_color3(global.hitEf01T, c_white, c_red, c_black);
			
			uc_shake(sqrt(shock)/2.5, 0.15);
			audio_play_sound(s_hit01, 5, false);
			//part_type_scale( global.hitEf02T, 1.5, 1.5 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_f01, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_f01, 1 );
			break;
			
		case 5:
			var mpUp = ob_atkEf06.mpUp;
			var shock = ob_atkEf06.shock;
			var shVal = (shock - down)/10;
			if ( knockback ) { 
				if ( state == 8 ) { process = 15; ySpeed = -9; }
				else if ( !isDF ) {state = 7; ySpeed = -9; process = shVal;}
			}
			process = int64(process);
			hitAfter2 = ob_atkEf06.hitAfter;
			
			dmg = sc_mobDmg(ob_atkEf06.damage, ob_atkEf06.pene);
			
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += mpUp;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			xSpeed = 0;
			
			if ( ob_atkEf06.image_xscale == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
				//dir = 1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
				//dir = -1;
			}
			part_type_color3(global.hitEf01T, c_white, c_red, c_black);
			
			uc_shake(sqrt(shock)/2.5, 0.15);
			audio_play_sound(s_hit01, 5, false);
			//part_type_scale( global.hitEf02T, 1.5, 1.5 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_f01, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_f01, 1 );
			break;
			
		case 6:
			var mpUp = ob_atkEf07.mpUp;
			var shock = ob_atkEf07.shock;
			var shVal = (shock - down)/10;
			if ( knockback ) { 
				if ( state == 8 ) { process = 20; ySpeed = -11; }
				else if (!isDA) { state = 6; process = shVal; }
			}
			process = int64(process);
			hitAfter = ob_atkEf07.hitAfter;
			
			dmg = sc_mobDmg(ob_atkEf07.damage, ob_atkEf07.pene);
			
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += mpUp;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			xSpeed = 0;
			
			if ( ob_atkEf07.image_xscale == -1 )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
				//dir = 1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
				//dir = -1;
			}
			part_type_color3(global.hitEf01T, c_white, c_yellow, c_black);
			
			uc_shake(sqrt(shock)/2.5, 0.15);
			audio_play_sound(s_hit01, 5, false);
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_k01, 0, 360, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );
			break;
	}
	
}