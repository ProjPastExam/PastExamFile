// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_skgun(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk_gun;
	var atk;
	
	if ( atkProcess == 24 ) {
		sc_pl_atkEf(sc_pl_fireDmg()*5, sc_pl_firePene(), sc_pl_fireShock(), 0, 
			4, 2, 5, sp_pl_atkEf101, dir, 0);
		uc_shake(8, 0.1);
		SE_Play(s_gun2, global.vol);
		//audio_play_sound(s_pl_sk101, 5, false);
		part_type_scale(global.gunEf, dir, 1);
		part_particles_create( global.hitEf, x, y, global.gunEf, 1 );
		//if (sc_getRoomValue("pause") != NULL) ob_roomControl.pause = 20;
		global.mp -= global.skMp[101];
		global.skKul[skState] = global.skKulData[101];
	}
	
	if ( atkProcess > 10 ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
		sc_pl_skKey();
		sc_pl_comInter();
	}
		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 8 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 16 )	{ image_index = 1; }
	else if ( atkProcess < 24 )	{ image_index = 2; }
	else if ( atkProcess < 27 )	{ image_index = 3; xSpeed = dir * -16; }
	else if ( atkProcess < 32 )	{ image_index = 4; xSpeed = dir * -10; }
	else if ( atkProcess < 37 )	{ image_index = 5; xSpeed = dir * -4; }
	else if ( atkProcess < 52 )	{
		sc_pl_skComb();
		sc_pl_comAfterSk();
	}
	else { canMove = 0;	atkProcess = -5; }
}