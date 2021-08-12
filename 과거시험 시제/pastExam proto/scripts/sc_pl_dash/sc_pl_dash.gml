// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_dash(){
	if ( dProcess > 0 && dProcess < 17 ) {
		if ( keyJump ) nextAtk = 9;
		if (keyAttack) {
			if ( keyDown )													nextAtk = 5;
			else if ( keyTop ) 												nextAtk = 6;
			else if ( (dir == 1 && keyRight) || (dir == -1 && keyLeft) )	nextAtk = 3;
		}
		if ( keySk1 ) nextAtk = -1;
		if ( keySk2 ) nextAtk = -2;
		if ( keySk3 ) nextAtk = -3;
	}
	if ( !isDash ) { canMove = 0; dProcess = -1; return; }
	
	if ( dProcess % 4 == 0 ) { 
		part_type_scale( global.dashEf, dir, 1 );
		part_particles_create( global.hitEf2, x, y, global.dashEf, 1 );
	}
		
	if ( (dProcess > 14 && dProcess < 17) ) {
		if ( nextAtk == 9 && !isJump ) {
			canMove = 0;
			dProcess = -30;
			nextAtk = 0;
			ySpeed = -17.5;
			jumpLast = 30;
			//if (keyLeft) xSpeed = -8.5;
			//if (keyRight) xSpeed = 8.5;
			audio_play_sound(s_jump, 5, false);
			return;
		}
	}
	
	if (dProcess == 0) audio_play_sound(s_dash01, 5, false);
	dProcess++;
	sprite_index = sp_pl_dash;
	image_xscale = dir;
	xSpeed = 27*dir*(20-dProcess)/14;
	ySpeed = 0;
	if ( dProcess > 16 ) { 
		if ( nextAtk == 3 ) { nextAtk = 0; atkProcess = 0; canMove = 3; dProcess = -10; isDash = false; }
		else if ( nextAtk == 5 ) { nextAtk = 0; atkProcess = 0; canMove = 5; dProcess = -10; isDash = false; }
		else if ( nextAtk == 6 ) { nextAtk = 0; atkProcess = 0; canMove = 6; dProcess = -10; isDash = false; }
		else if ( nextAtk == -1 && global.mp >= skMp[global.sk1]) 
			{ nextAtk = 0; atkProcess = 0; dProcess = -10; canMove = global.sk1; isDash = false; }
		else if ( nextAtk == -2 && global.mp >= skMp[global.sk2]) 
			{ nextAtk = 0; atkProcess = 0; dProcess = -10; canMove = global.sk2; isDash = false; }
		else if ( nextAtk == -3 && global.mp >= skMp[global.sk3]) 
			{ nextAtk = 0; atkProcess = 0; dProcess = -10; canMove = global.sk3; isDash = false; }
		else { canMove = 0; dProcess = -30; isDash = false; }
	}
}