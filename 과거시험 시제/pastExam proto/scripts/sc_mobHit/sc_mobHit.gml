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
	switch ( argument0 ) {
		
		case 0:
			var shock = ob_atkEf01.shock - down;
			if ( knockback ) { 
				if ( shock < 10) {}
				else if (shock < 20) { state = 5; process = sqrt(shock)+12; }
				else if (shock < 30) { state = 6; process = sqrt(shock)+12; }
				else { state = 7; process = sqrt(shock)+12; }
				if ( shock >= 10 && isJump) { ySpeed = -8; }
			}
			process = int64(process);
			hitAfter = ob_atkEf01.hitAfter;
			dmg = ob_atkEf01.damage * (100 - (defence * (100 - ob_atkEf01.pene)/100))/100;
			hp -= dmg;
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += 10;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			if ( ob_atkEf01.image_angle == 270 ) {
				part_type_direction( global.hitEf01T, -235, 305, 0, 0 );
				
				hitDir = 0;
				
			}
			else if ( plX > x )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				xs = -1;
				hitDir = -1;
			}
			else	{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				xs = 1;
				hitDir = 1;
			}
			uc_shake(3, 0.15);
			audio_play_sound(s_hit01, 5, false);
			
			if ( ob_atkEf01.shock < 10) part_type_scale( global.hitEf02T, xs * 0.6, 0.6 );
			else if ( ob_atkEf01.shock < 20) part_type_scale( global.hitEf02T, xs * 0.8, 0.8 );
			else if ( ob_atkEf01.shock < 30) part_type_scale( global.hitEf02T, xs * 1, 1 );
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
			var shock = ob_atkEf03.shock - down;
			if ( knockback ) { 
				if ( shock < 10) {}
				else if (shock < 20) { state = 5; process = sqrt(shock)+12;; }
				else if (shock < 30) { state = 6; process = sqrt(shock)+12;; }
				else { state = 7; process = sqrt(shock)+12;; }
				if ( shock >= 10 && isJump) { ySpeed = -8; }
			}
			process = int64(process);
			hitAfter = ob_atkEf03.hitAfter;
			dmg = ob_atkEf03.damage * (100 - (defence * (100 - ob_atkEf03.pene)/100))/100;
			hp -= dmg;
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += 15;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			xSpeed = 0;
			
			if ( plX > x )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
			}
			uc_shake(5, 0.15);
			audio_play_sound(s_hit01, 5, false);
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf_k01, 0, 360, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );
			break;
			
		case 3:
			var shock = ob_atkEf04.shock - down;
			if ( knockback ) { 
				if ( shock < 10 ) {}
				else if (shock < 20) { state = 5; ySpeed = -15; process = sqrt(shock)+12; }
				else if (shock < 30) { state = 6; ySpeed = -18; process = sqrt(shock)+12; }
				else { state = 7; ySpeed = -20; process = sqrt(shock)+12; }
			}
			process = int64(process);
			hitAfter = ob_atkEf04.hitAfter;
			dmg = ob_atkEf04.damage * (100 - (defence * (100 - ob_atkEf04.pene)/100))/100;
			hp -= dmg;
			dmgId = instance_create_layer(x, bbox_top - 50, "effect", ob_mobDmg);
			dmgId.dmg = dmg;
			dmgId.colo = 0;
			global.mp += 15;
			if (global.mp > global.mpMax) global.mp = global.mpMax;
			xSpeed = 0;
			
			if ( plX > x )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
			}
			uc_shake(5, 0.2);
			audio_play_sound(s_hit01, 5, false);
			part_type_scale( global.hitEf02T, 1.5, 1.5 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf02T, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
			break;
	}
	
	
}