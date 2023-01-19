// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk162(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk162;
	//var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	if ( atkProcess == 12 ) {
		sc_pl_atkEf(sc_pl_fireDmg(), sc_pl_firePene(), sc_pl_fireShock()/1.2, 0, 
			4, 2, 0, sp_pl_sk162Ef, dir, 0, x);
		uc_shake(8, 0.1);
		SE_Play(s_jp_bAtk2, global.vol);
		part_type_scale(global.gunEf, dir, 1);
		part_particles_create( global.hitEf, x-(20*dir), y-10, global.gunEf, 1 );
		global.mp -= global.skMp[162];
		global.skKul[skState] = global.skKulData[162];
	}
	
		
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	if ( atkProcess < 6 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 12 )	{ image_index = 1; }
	else if ( atkProcess < 18 )	{ image_index = 3; xSpeed = dir * -10; }
	else if ( atkProcess < 24 )	{ image_index = 4; xSpeed = dir * -7; }
	else if ( atkProcess < 30 )	{ image_index = 5; xSpeed = dir * -4; }
	else if ( atkProcess < 45 )	{
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else { canMove = 0;	atkProcess = -5; }
}
