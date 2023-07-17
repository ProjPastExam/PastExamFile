// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk102(){
	sc_pl_skDir();
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	sprite_index = sp_pl_atk2;
	
	if ( atkProcess > 10 ) {
		sc_pl_comInter();
		sc_pl_skKey();
	}
	
	if ( atkProcess == 15 || atkProcess == 30 ) {
		if (isSin) {
			atk = instance_create_layer(x, y, "effect", ob_sinEf01);
			atk.grade = isSin;
			atk.image_xscale = dir;
			atk.dir = dir;
			SE_Play(s_arrow02, global.vol);
			//global.comCt -= (20 - isSin*5);
		}
		else if (global.item11) {
			var fDmg = 2.5*sc_pl_fireDmg() * (1+global.item11)/2;
			sc_pl_atkEf(fDmg, sc_pl_firePene(), sc_pl_fireShock()*1.2, sc_pl_fireMana(), 
				0, 11, 0, sp_pl_itemEf11_2, dir,,,,,,ob_atkEfItem11);
			SE_Play(s_item11_2, global.vol);
		}
		else {
			sc_pl_atkEf(sc_pl_atkDmg()*2.5, sc_pl_atkPene(), sc_pl_atkShock()*1.2, sc_pl_atkMana(), 
				0, 0, 0, sp_pl_atkEf02, dir);
			SE_Play(s_arrow02, global.vol);
		}
		sc_pl_kulNMana(102, 2);
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
	if (atkProcess > 30) sc_pl_atkDnJ();

	
	if ( atkProcess < 5 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 10 )	{ image_index = 1; }
	else if ( atkProcess < 15 )	{ image_index = 2;	xSpeed = dir*-2; }
	else if ( atkProcess < 20 )	{ image_index = 3; }
	else if ( atkProcess < 25 )	{ image_index = 1; }
	else if ( atkProcess < 30 )	{ image_index = 2;	xSpeed = dir*-2; }
	else if ( atkProcess < 35 )	{ image_index = 3; }
	else if ( atkProcess < 40 )	{ image_index = 4; }
	else if ( atkProcess < 45 )	{ image_index = 5; }
	else if ( atkProcess < 55 )	{
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
	else { canMove = 0;	atkProcess = -5; }
	
}