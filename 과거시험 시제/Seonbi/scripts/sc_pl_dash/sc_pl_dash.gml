// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_dash(){
	nextAtk = 0;
	if ( keyJump ) nextAtk = 9;
	if (keyAttack) {
		if ( keyDown && isJump )										nextAtk = 5;
		else if ( keyTop ) 												nextAtk = 6;
		else if ( (dir == -1 && keyRight) || (dir == 1 && keyLeft) )	nextAtk = 1;
		else															nextAtk = 3;
	}
	sc_pl_skKey();

	//if ( !isDash ) { canMove = 0; dProcess = -1; return; }
	
	if ( dProcess == 0) {
		var hIndex = 10 + 3*(2-global.level);
		sc_hitAfter(hIndex);
	}
	
	if ( dProcess == 4 && global.item12) {
		var kDmg = sc_pl_kickDmg()/2;
		var kt = 0;
		if (global.item12 == 2)			kt = 10;
		else if (global.item12 == 3)	kt = 6;
		sc_pl_atkEf(kDmg, sc_pl_kickPene(), sc_pl_kickShock(), sc_pl_kickMana()/2, 
			0, 10, kt, sp_pl_itemEf12, dir,,,,,,ob_atkEfTrack);
		SE_Play(s_swing_c1, global.vol);
		//audio_play_sound(s_kick01, 5, false);
	}
	
	if (global.item12)		sprite_index = sp_pl_item12;
	else if (spAtk == 1)	sprite_index = sp_pl_sk144_dash; 
	else if (spAtk == 2)	sprite_index = sp_pl_sk188_dash; 
	else					sprite_index = sp_pl_dash;
	image_xscale = dir;
	
	if ( dProcess % 4 == 0 ) { 
		part_type_sprite(global.dashEf, sprite_index, true, true, false);
		part_type_scale( global.dashEf, dir, 1 );
		part_particles_create( global.hitEf2, x, y, global.dashEf, 1 );
	}
	
	if (dProcess == 0) SE_Play(s_dash01, global.vol);//audio_play_sound(s_dash01, 5, false);
	dProcess++;
	
	xSpeed = 20*dir*(25-dProcess)/14;
	ySpeed = 0;
	
	sc_pl_atkDnJ( 1 );
	

	if ( nextAtk == 3 ) { 
		if (global.item4 && global.comCt >= 15)	{ canMove = 20; }
		else							{ canMove = 3; }
		nextAtk = 0; atkProcess = 0;  dProcess = -30; isDash = false; 
	}
	else if ( nextAtk == 1 ) { nextAtk = 0; atkProcess = 0; canMove = 1; dProcess = -30; isDash = false; dir = dir*-1; }
	else if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; dProcess = -30; isDash = false; }
	else if ( nextAtk == 6 ) { 
		if (!isJump) { nextAtk = 0; atkProcess = 0; canMove = 6; dProcess = -30; isDash = false; }
		else		 { 
			//if (xSpeed > 6) xSpeed = 6;		if (xSpeed < -6) xSpeed = -6;
			nextAtk = 0; atkProcess = 0; canMove = 8; dProcess = -30; isDash = false;
		}
	}
	sc_pl_skComb();

	if ( dProcess > 20 ) { canMove = 0; dProcess = -30; isDash = false; }
}