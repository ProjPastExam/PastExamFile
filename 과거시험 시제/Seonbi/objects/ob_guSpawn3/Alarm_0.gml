/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	
	if ( state != -1 ) {
		sc_mobMain();
		
		//이하 몹 개인 코드
		sc_guSpawn3Atk();
	}
	else {
		sprite_index = sp_guSpawn3_die;
		xSpeed = 0;
		if ( process < 55 ) process++;
		if ( process == 1 ) { 
			//SE_Play(s_jpAdie1, global.vol);
			with (ob_mobBase)
			{
				if (state > 0)
				{
					//isCounter	= 0;
					state		= 9;
					process		= 80;
					spawnIndex	= 0;
					part_particles_create( global.hitEf, x, y+hitLot, global.mobCtEf, 1 );
				}
			}
		}
		if ( process < 5 )			{ image_index = 0; }
		else if ( process < 10 )	{ image_index = 1; }
		else if ( process < 15 )	{ image_index = 2; }
		else if ( process < 20 )	{ image_index = 3; }
		else if ( process < 25 )	{ image_index = 4; }
		else if ( process < 30 )	{ image_index = 5; }
		else if ( process < 35 )	{ image_index = 6; }
		else if ( process < 40 )	{ image_index = 7; }
		else if ( process < 45 )	{ image_index = 8; }
		else if ( process < 50 )	{ image_index = 9; }
		else if ( process < 55 )						
		{ 
			image_index = 10; 
			with (instance_create_layer(x, y+100, "effect", ob_guSmoke)) {
				ob = other.id;
				sprite_index = sp_guSmoke2;
			}
			process = 100;
		}
	}
	sc_mobfixlotation();
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;