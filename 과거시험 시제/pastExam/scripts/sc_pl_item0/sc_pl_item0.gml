// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_item0(){
	atkProcess++;
	if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	
	if ( isJump ) sprite_index = sp_pl_jumpSin;
	else sprite_index = sp_pl_atk2sin;
	
	if ( atkProcess > 18 ) {
		if (keyAttack) {
			if ( keyDown )		nextAtk = 5;
			else if ( keyTop ) 	nextAtk = 6;
			else				nextAtk = 1;
		}
	}
	sc_pl_skKey();
	
	if ( atkProcess == 26 ) {
		atk = instance_create_layer(x, y, "effect", ob_sinEf01);
		//atk.damage = 10;
		//atk.shock = 10;
		//atk.pene = 0;
		//atk.hitAfter = 15;
		atk.grade = isSin;
		atk.image_xscale = dir;
		atk.dir = dir;
		SE_Play(s_arrow02, global.vol);
		//audio_play_sound(s_arrow02, 5, false);
		global.comCt -= 20;
	}
	
	//대쉬 제어

	if ( keyDash ) nextAtk = 10;
	if ( keyJump ) nextAtk = 9;
	sc_pl_atkDnJ();

	
	if ( atkProcess < 8 )		{ image_index = 0; nextAtk = 0; }
	else if ( atkProcess < 18 )	{ image_index = 1; }
	else if ( atkProcess < 26 )	{ image_index = 2; }
	else if ( atkProcess < 32 )	{ image_index = 3; }
	else if ( atkProcess < 38)	{ image_index = 4; }
	else if ( atkProcess < 47 )	{ image_index = 5; }
	else if ( atkProcess < 55 )	{
		if ( nextAtk == 1 )	{ canMove = 1;	atkProcess = 0; }
		else if ( nextAtk == 5 )	{ canMove = 5;	atkProcess = 0; }
		else if ( nextAtk == 6 )	{ canMove = 6;	atkProcess = 0; }
		else if ( nextAtk == 10 ) {
			dProcess = 0;
			canMove = 10;
			atkProcess = -1;
			if ( keyRight ) dir = 1;
			if ( keyLeft ) dir = -1
		}
	}
	else { canMove = 0;	atkProcess = -5; }
	sc_pl_skComb();
}