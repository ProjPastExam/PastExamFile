// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk173(){
	sc_pl_skDir();
	
	atkProcess++;
	if (!isJump) xSpeed = 0;
	image_xscale = dir;
	sprite_index = sp_pl_sk173;
	var atk;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
		if ( keyDash ) nextAtk = 10;
		if ( keyJump ) nextAtk = 9;
	}

	
	if ( atkProcess == 24 || atkProcess = 68 ) {
		sc_pl_atkEf(sc_pl_fireDmg()*2.5, sc_pl_firePene(), 100, 0, 
			4, 2, 5, sp_pl_sk173Ef, dir, 0, , y-20);
		uc_shake(8, 0.1);
		SE_Play(s_gun2, global.vol);
		part_type_scale(global.gunEf, dir, 1);
		part_particles_create( global.hitEf, x, y-20, global.gunEf, 1 );
		sc_pl_kulNMana(173);
	}
	
	if ( (atkProcess > 24 ) ) {
		sc_pl_atkDnJ();
	}
	
	if (atkProcess > 32 && atkProcess < 60)	{ if (sc_pl_skRepeat(173))	atkProcess = 60; }
	
	if ( atkProcess < 8 )		
	{ 
		if (global.item44 > 0)	atkProcess = 12;
		image_index = 0; nextAtk = 0; 
	}
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