// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk110(){
	var dmg = sc_pl_kickDmg()*6;
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	if ( atkProcess < 20 ) ySpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk110;
	
	if ( atkProcess > 6 ) {
		sc_pl_skKey();
		sc_pl_comInter();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}


	if ( atkProcess == 1 ) {
		SE_Play(s_dash01, global.vol);
	}
	
	if ( atkProcess == 14 ) {
		sc_pl_atkEf(dmg, sc_pl_kickPene(), sc_pl_kickShock(), 0, 
			0, 1, 0, sp_pl_itemEf4, dir);
		SE_Play(s_bandit02atk2, global.vol);
		global.mp -= global.skMp[110];
		global.skKul[skState] = global.skKulData[110];
	}
	
	if ( atkProcess == 92 ) {
		sc_pl_atkEf(sc_pl_fireDmg()*5, sc_pl_firePene(), sc_pl_fireShock(), 0, 
			4, 2, 5, sp_pl_atkEf101, dir, 0);
		uc_shake(8, 0.1);
		SE_Play(s_pl_sk110, global.vol);
		//audio_play_sound(s_pl_sk101, 5, false);
		part_type_scale(global.gunEf, dir, 1);
		part_particles_create( global.hitEf, x, y, global.gunEf, 1 );
		//if (sc_getRoomValue("pause") != NULL) ob_roomControl.pause = 20;
		global.mp -= global.skMp[110];
		global.skKul[skState] = global.skKulData[110];
	}
	
		
	if ( (atkProcess > 24 && atkProcess < 60 ) || atkProcess > 90 ) {
		sc_pl_atkDnJ();
	}
	
	
	if ( atkProcess < 3 )			{ image_index = 0; nextAtk = 0; xSpeed = dir * 8; }
	else if ( atkProcess < 6 )		{ image_index = 0; xSpeed = dir * 13; }
	else if ( atkProcess < 10 )		{ image_index = 0; xSpeed = dir * 20; }
	else if ( atkProcess < 14 )		{ image_index = 1; xSpeed = dir * 25; }
	else if ( atkProcess < 18 )		{ image_index = 2; xSpeed = dir * 20; }
	else if ( atkProcess < 22 )		{ image_index = 2; xSpeed = dir * 13; }
	else if ( atkProcess < 28 )		{ image_index = 3; xSpeed = dir * 8; }
	else if ( atkProcess < 32 )		{ image_index = 3; xSpeed = dir * 4; }
	else if ( atkProcess < 50 )		{ image_index = 3; xSpeed = 0; }
	else if ( atkProcess < 60 )		{ canMove = 0;	atkProcess = -5; }
	else if ( atkProcess < 84 )		{ image_index = 4; nextAtk = 0; }
	else if ( atkProcess < 88 )		{ image_index = 5; }
	else if ( atkProcess < 92 )		{ image_index = 6; }
	else if ( atkProcess < 95 )		{ image_index = 7; xSpeed = dir * -16; }
	else if ( atkProcess < 100 )	{ image_index = 8; xSpeed = dir * -10; }
	else if ( atkProcess < 105 )	{ image_index = 9; xSpeed = dir * -4; }
	else if ( atkProcess < 120 )	{
		sc_pl_skComb();
		sc_pl_comAfterSk();
	}
	else { canMove = 0;	atkProcess = -5; }
	
	
	if ( atkProcess > 20 && atkProcess < 60 )	{
		if (sc_pl_skRepeat(110)) { atkProcess = 80;	nextAtk = 0; }
		sc_pl_skComb();
		sc_pl_comAfterSk();
	}
}