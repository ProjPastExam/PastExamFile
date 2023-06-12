// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDn2(){
	
	atkProcess++;
	xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_atkDn2;
	if (spAtk == 1) { sprite_index = sp_pl_sk144_dn2; }
	var atk;
	
	if ( atkProcess == 1 ) {
		if (keyRight)		{ dir = 1;	canMove = 5; }
		else if (keyLeft)	{ dir = -1;	canMove = 5; }
		if (!isJump)		canMove = 0;
	}
	
	if ( atkProcess > 9 ) {
		if (keyAttack) {
			if ( keyTop ) 													nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
			else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 4;
			else															nextAtk = 2;
		}
		sc_pl_skKey();
	}
	
	
	if ( atkProcess == 6 ) {
		sc_pl_atkEf(sc_pl_kickDmg(), sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana(), 
			0, 1, 0, sp_pl_atkDn2Ef, dir,,,,,,ob_atkDnEf);
		SE_Play(s_kick01, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	//대쉬 제어
	if ( atkProcess > 9 ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( atkProcess > 205 ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )			{ image_index = 0; ySpeed = 0; xSpeed = 0; }
	else if ( atkProcess < 200 )	{ image_index = 1;
		ySpeed = 25;
		var tileId	= layer_tilemap_get_id("Tile_Collision");
		if (!isJump || tilemap_get_at_pixel(tileId, x, bbox_bottom+25) == 2) {
			atkProcess = 200;
			ySpeed = 0; xSpeed = 0;
			with (ob_atkDnEf) {
				state = 200;
			}
		}
	}
	else if ( atkProcess < 205 )	{ image_index = 2; }
	else if ( atkProcess < 225 )	{ 
		image_index = 3;
		sc_pl_skComb();
		if ( nextAtk == 2 ) { nextAtk = 0; atkProcess = 0; canMove = 2; }
		else if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; }
		else if ( nextAtk == 4 ) { nextAtk = 0; atkProcess = 0; canMove = 1;	dir = dir*-1; }
		else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; }
	}
	else	{ canMove = 0;	atkProcess = -5; }
	
}