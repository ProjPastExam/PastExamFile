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

	if ( atkProcess == 24 ) {
		SE_Play(s_swing_c2, global.vol);
		//audio_play_sound(s_swing_c1, 5, false);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*2, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			0, 1, 4, sp_pl_sk144Ef, dir);
		sc_pl_kulNMana(144);
		
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


function sc_pl_sk144_atk() {
	sc_pl_skDir();
	sc_pl_skDir(51);
	sc_pl_skDir(101);
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk144_atk;
	var atk;
	
	if ( atkProcess > 10 ) {
		if ( keyAttack ) { nextAtk = 1;	if ( keyTop ) nextAtk = 6; }
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if (atkProcess == 16) {
		SE_Play(s_swing_c1, global.vol);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*3, sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana(), 
			0, 1, 0, sp_pl_sk144_atkEf1, dir);
		spAtk = 1;
		alarm[6] = 600;
	}
	else if (atkProcess == 60) {
		SE_Play(s_swing_c1, global.vol);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*3, sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana(), 
			0, 1, 0, sp_pl_sk144_atkEf2, dir);
		spAtk = 1;
		alarm[6] = 600;
	}
	else if (atkProcess == 110) {
		SE_Play(s_swing_c1, global.vol);
		atk = sc_pl_atkEf(sc_pl_kickDmg()*3, sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana(), 
			0, 1, 0, sp_pl_sk144_atkEf3, dir);
		spAtk = 1;
		alarm[6] = 600;
	}


		
	if ( (atkProcess > 16 ) ) {
		sc_pl_atkDnJ();
	}

	
	if ( atkProcess < 8 )		{ image_index = 0;	xSpeed = dir*18; ySpeed = 0; }
	else if ( atkProcess < 16 )	{ image_index = 1;	xSpeed = dir*18; }
	else if ( atkProcess < 24 )	{ image_index = 2; }
	else if ( atkProcess < 32 )	{ image_index = 3; }
	else if ( atkProcess < 48 )	{ 
		if (nextAtk == 1)		{ atkProcess = 50; }
		else if (nextAtk == 6)	{ atkProcess = 0;	canMove = 6; }
		sc_pl_skComb();
		nextAtk = 0;
	}
	else if ( atkProcess < 50 )	{ canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 50 ) {}
	else if ( atkProcess < 55 )	{ image_index = 4;	xSpeed = dir*18; ySpeed = 0;  }
	else if ( atkProcess < 60 )	{ image_index = 5;	xSpeed = dir*18; }
	else if ( atkProcess < 65 )	{ image_index = 6; }
	else if ( atkProcess < 70 )	{ image_index = 7; }
	else if ( atkProcess < 80 )	{ 
		if (nextAtk == 1)		{ atkProcess = 100; }
		else if (nextAtk == 6)	{ atkProcess = 0;	canMove = 6; }
		sc_pl_skComb();
		nextAtk = 0;
	}
	else if ( atkProcess < 82 )	{ canMove = 0;	atkProcess = -5; }
	
	if ( atkProcess < 100 ) {}
	else if ( atkProcess < 105 )	{ image_index = 4;	xSpeed = dir*18; ySpeed = 0;  }
	else if ( atkProcess < 110 )	{ image_index = 5;	xSpeed = dir*18; }
	else if ( atkProcess < 115 )	{ image_index = 6; }
	else if ( atkProcess < 120 )	{ image_index = 7; }
	else if ( atkProcess < 130 )	{ 
		if (nextAtk == 6)	{ atkProcess = 0;	canMove = 6; }
		sc_pl_skComb();
		nextAtk = 0;
	}
	else { canMove = 0;	atkProcess = -5; }
	
}

function sc_pl_sk144_up(){
	atkProcess++;
	image_xscale = dir;
	sprite_index = sp_pl_sk144_atkUp;
	var atk;
	
	if ( atkProcess > 4 ) {
		if (keyAttack) {
			if ( keyDown && isJump )		nextAtk = 5;
			else nextAtk = 1;
		}
	}
	
	if (!isJump) xSpeed = 0;
	
	if ( atkProcess == 8 ) {
		sc_pl_atkEf(sc_pl_kickDmg()*2, sc_pl_kickPene(), sc_pl_kickShock()-80, sc_pl_kickMana(), 
			18, 1, 0, sp_pl_atkEf04, dir);
		SE_Play(s_kick01, global.vol);
	}
	
	//대쉬 제어
	if ( (atkProcess > 4) ) {
		if ( keyDash && isDash ) nextAtk = 10;
		sc_pl_skKey();
	}
		
	if ( (atkProcess > 8) ) {
		sc_pl_atkDnJ(2);
		sc_pl_skComb();
	}
	
	if ( atkProcess < 8 )		{ image_index = 0; nextAtk = 0; if (isJump) { ySpeed = -6; } }
	else if ( atkProcess < 12 )	{ image_index = 1; if (isJump) { ySpeed = -12; } }
	else if ( atkProcess < 16 )	{ image_index = 2; if (isJump) { ySpeed = -6; } }
	else if ( atkProcess < 21 )	{ image_index = 3; }
	else if ( atkProcess < 35 ) { 
		if (!isJump)		{ canMove = 0;	atkProcess = -10; }
		if (nextAtk == 1)	{ canMove = 50;	atkProcess = 0; }
		else if (nextAtk == 5)	{ canMove = 5;	atkProcess = 0; }
		
	}
	else	{ canMove = 0;	atkProcess = -10; }
}