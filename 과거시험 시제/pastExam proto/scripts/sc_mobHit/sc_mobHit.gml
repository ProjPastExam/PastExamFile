// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobHit( argument0 ){
	var plX = sc_pl_get("x");
	//isHostile = true;
	ad = true;
	state = 10;
	process = 0;
	switch ( argument0 ) {
		
		case 0:
			if ( knockback ) state = 5;
			hitAfter = 15;
			hp -= 5;
			if ( ob_atkEf01.image_angle == 270 ) {
				part_type_direction( global.hitEf01T, -235, 305, 0, 0 );
				
				hitDir = 0;
				
			}
			else if ( plX > x )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );

				hitDir = -1;
			}
			else	{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );

				hitDir = 1;
			}
			uc_shake(3, 0.15);
			audio_play_sound(s_hit01, false, false);
			part_type_scale( global.hitEf02T, 1, 1 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 15 );
			part_type_orientation( global.hitEf02T, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
			break;

		case 1:
			if ( knockback ) state = 5;
			hitAfter = 15;
			hp -= 15;
			xSpeed = 0;
			if ( ob_atkEf02.image_angle == 90 ) {
				part_type_direction( global.hitEf01T, -235, 305, 0, 0 );
				hitDir = 0;
				
			}
			else if ( plX > x )	{
				part_type_direction( global.hitEf01T, 135, 205, 0, 0 );
				hitDir = -1;
			}
			else			{
				part_type_direction( global.hitEf01T, -25, 45, 0, 0 );
				hitDir = 1;
			}
			uc_shake(5, 0.2);
			audio_play_sound(s_hit01, false, false);
			part_type_scale( global.hitEf02T, 1.5, 1.5 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 30 );
			part_type_orientation( global.hitEf02T, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
			break;
			
		case 2:
			if ( knockback ) state = 6;
			hitAfter = 15;
			hp -= 3;
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
			audio_play_sound(s_hit01, false, false);
			part_type_scale( global.hitEf02T, 1.5, 1.5 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf02T, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
			break;
			
		case 3:
			if ( knockback ) { ySpeed = -18;	state = 5; }
			hitAfter = 15;
			hp -= 3;
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
			audio_play_sound(s_hit01, false, false);
			part_type_scale( global.hitEf02T, 1.5, 1.5 );
			part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
			part_type_orientation( global.hitEf02T, -30, 30, 0, 0, 0 );
			part_particles_create( global.hitEf, x, y, global.hitEf02T, 1 );
			break;
	}
	
	
}