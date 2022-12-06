// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk106(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk106;
	var atk;
	
	if ( atkProcess > 20 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}

	
	if ( atkProcess == 24 || atkProcess = 68 ) {
		sc_pl_atkEf(sc_pl_fireDmg()*3, sc_pl_firePene(), 100, 0, 
			4, 2, 5, sp_pl_atkEf101, dir, 0, , y-20);
		uc_shake(8, 0.1);
		SE_Play(s_pl_sk101, global.vol);
		//audio_play_sound(s_pl_sk101, 5, false);
		part_type_scale(global.gunEf, dir, 1);
		part_particles_create( global.hitEf, x, y-20, global.gunEf, 1 );
		//if (sc_getRoomValue("pause") != NULL) ob_roomControl.pause = 20;
		global.mp -= global.skMp[106];
		global.skKul[skState] = global.skKulData[106];
	}
	
	//대쉬 제어
	if ( (atkProcess > 14 ) ) {
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}
		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	if (atkProcess > 32 && atkProcess < 60)	{ if (sc_pl_skRepeat(106))	atkProcess = 60; }
	
	if ( atkProcess < 8 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 16 )	{ image_index = 1; }
	else if ( atkProcess < 24 )	{ image_index = 2; }
	else if ( atkProcess < 27 )	{ image_index = 3; xSpeed = dir * -12; }
	else if ( atkProcess < 32 )	{ image_index = 4; xSpeed = dir * -8; }
	else if ( atkProcess < 37 )	{ image_index = 5; xSpeed = dir * -4; }
	else if ( atkProcess < 52 )	{  }
	else if ( atkProcess < 60 ) { canMove = 0;	atkProcess = -5; }
	
	else if ( atkProcess < 64 )	{ image_index = 6; }
	else if ( atkProcess < 68 )	{ image_index = 7; }
	else if ( atkProcess < 71 )	{ image_index = 8; xSpeed = dir * -12; }
	else if ( atkProcess < 76 )	{ image_index = 9; xSpeed = dir * -8; }
	else if ( atkProcess < 81 )	{ image_index = 10; xSpeed = dir * -4; }
	else if ( atkProcess < 100 )	{ 
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else { canMove = 0;	atkProcess = -5; }
	
}