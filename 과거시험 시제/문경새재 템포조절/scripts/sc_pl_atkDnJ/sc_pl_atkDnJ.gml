// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDnJ( index = 0 ){
	if (index == 0 || index == 1) {
		if ( nextAtk == 9 && !isJump ) {
			canMove = 0;
			nextAtk = 0;
			ySpeed = -17.5;
			jumpLast = 30;
			if (keyLeft) xSpeed = -8.5;
			if (keyRight) xSpeed = 8.5;
			audio_play_sound(s_jump, 5, false);
		}
		
	}
	if (index == 0 || index == 2) {
		if ( nextAtk == 10 && isDash ) {
			dProcess = 0;
			nextAtk = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
}