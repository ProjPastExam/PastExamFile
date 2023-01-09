// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_hit(argument0){
	var mor = ob_player.isImort;
	if ( sc_pl_get("hitAfter") == 0 && ob_player.canMove >= 0 && !mor ) {
		if (global.item8 && global.comCt >= global.item8Index) {
			global.comCt = 0;
			ob_player.hitAfter = 60*(1 + global.item13*0.3);
			uc_shake(10, 0.2);
			if ( sc_getRoomValue("pause") == 0 ) { ob_roomControl.pause = 20; }
			SE_Play(s_pl_item8, global.vol);
			return;
		}
		
		var plX = sc_pl_get("x");
		var plY = sc_pl_get("y");
		switch (argument0) {
		case 0:
			global.hp -= 1;
			uc_shake(10, 0.2);
			if ( sc_getRoomValue("pause") == 0 ) { ob_roomControl.pause = 20; }
			SE_Play(s_plHit, global.vol);
			//audio_play_sound(s_plHit, 5, false);
			with (ob_player) {
				hitAfter = 90*(1 + global.item13*0.3);
				
				if (global.item13 == 0) {
					canMove = 0;
					sprite_index = sp_pl_hit;
					xSpeed = ob_player.dir * -15;
					atkProcess = -1;
					dProcess = -1;
				}
			}
			
			with (ob_roomControl) { ob_roomControl.hpProcess = 24; }
			part_particles_create( global.hitEf, plX, plY, global.hitEf04T, 1 );
			global.comCt = 0;
			break;
			
		case 1:
			global.hp -= 2;
			uc_shake(12, 0.2);
			if ( sc_getRoomValue("pause") == 0 ) { ob_roomControl.pause = 30; }
			SE_Play(s_plHit, global.vol);
			//audio_play_sound(s_plHit, 5, false);
			with (ob_player) {
				hitAfter = 90*(1 + global.item13*0.3);

				if (global.item13 == 0) {
					canMove = 0;
					sprite_index = sp_pl_hit;
					xSpeed = ob_player.dir * -20;
					atkProcess = -1;
					dProcess = -1;
				}
			}

			with (ob_roomControl) { ob_roomControl.hpProcess = 24; }
			part_particles_create( global.hitEf, plX, plY, global.hitEf04T, 1 );
			global.comCt = 0;
			break;
		}
	}
}