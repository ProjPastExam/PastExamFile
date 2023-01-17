// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk144(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk144;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	/*
	if ( atkProcess == 18 ) {
		
	}
	*/
	if ( atkProcess == 24 ) {
		SE_Play(s_swing_c2, global.vol);
		//audio_play_sound(s_swing_c1, 5, false);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*2, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			0, 1, 4, sp_pl_atkEf108, dir);
		global.mp -= global.skMp[144];
		global.skKul[skState] = global.skKulData[144];
		
		spAtk = 1;
		alarm[6] = 600;
		//if (global.comCt > 25) { atk.hitAfter = 3; }
		//if (global.comCt > 50) { atk.hitAfter = 2; }
		/*
		var i = 0;
		var tileId	= layer_tilemap_get_id("Tile_Collision");
		for (i = 0; i < 360; i+=30) {
			var tileIndex = tilemap_get_at_pixel(tileId, x + (i*dir), bbox_bottom - 15);
			if (tileIndex == 3) break;
		}
		x += i * dir;
		*/
	}

		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	if ( (atkProcess > 36 ) ) {
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 24 )	{ image_index = 2; }
	else if ( atkProcess < 30 )	{ image_index = 3; xSpeed = 50*dir; }
	else if ( atkProcess < 36 )	{ image_index = 4; }
	else if ( atkProcess < 42 )	{ image_index = 5; }
	else if ( atkProcess < 48 )	{ image_index = 6; }
	else if ( atkProcess < 54 )	{ image_index = 7; }
	else { canMove = 0;	atkProcess = -5; }
}
