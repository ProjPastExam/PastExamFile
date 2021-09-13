// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_hit(argument0){
	var mor = ob_player.isImort;
	if ( sc_pl_get("hitAfter") == 0 && ob_player.canMove >= 0 && !mor ) {
		var plX = sc_pl_get("x");
		var plY = sc_pl_get("y");
		switch (argument0) {
		case 0:
			global.hp -= 1;
			uc_shake(10, 0.2);
			if ( sc_getRoomValue("pause") == 0 ) { ob_roomControl.pause = 20; }
			audio_play_sound(s_plHit, 5, false);
			ob_player.hitAfter = 90;
			ob_player.atkProcess = -1;
			ob_player.dProcess = -1;
			ob_player.canMove = 0;
			ob_player.sprite_index = sp_pl_hit;
			ob_player.xSpeed = ob_player.dir * -15;
			if (instance_exists(ob_roomControl)) ob_roomControl.hpProcess = 24;
			part_particles_create( global.hitEf, plX, plY, global.hitEf04T, 1 );
			break;
		}
	}
}