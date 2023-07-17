// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_sk115(){
	sc_pl_skDir();
	atkProcess++;
	//if (!isJump) xSpeed = 0;
	var atk;
	image_xscale = dir;
	var	accSpeed	= 0.8;
	var	walkSpeed	= 8.5;
	var _skIndex = 3;
	sprite_index = sp_pl_sk103_run;
	
	if ( atkProcess == 1 )	
	{
		image_index = 0;
	}
	
	if ( atkProcess > 10 )	
	{
		sc_pl_comInter();
		sc_pl_skKey();
	}
	
	
	if ( atkProcess % (_skIndex*4) == 9) {
		sc_pl_atkEf(sc_pl_atkDmg()*1.5, sc_pl_atkPene(), sc_pl_atkShock(), 0,
			0, 0, 0, sp_pl_sk111Ef, dir,3,x+dir*30, y-10);
		SE_Play(s_arrow01, global.vol);
		
		sc_pl_kulNMana(115, 10);
	}
	
	if ( atkProcess % _skIndex == 0 ) {
		image_index++;
	}
	
	//대쉬 제어
	if ( keyDash ) nextAtk = 10;
	
	
	if ( keyJump && canJump ) 
	{
		ySpeed = -17.5;
		jumpLast = 30;
		canJump = false;
		if (keyLeft) xSpeed = -8.5;
		if (keyRight) xSpeed = 8.5;
	}
	
	if ( keyLeft )	{ //좌로 이동
		if ( xSpeed > -walkSpeed )	{
			if (isJump)	xSpeed -= accSpeed;
			else		xSpeed = -walkSpeed;
		}
		else xSpeed = -walkSpeed;
		dir = -1;
		sprite_index = sp_pl_sk103_run;
	}
	else if ( keyRight )	{	//우로 이동
		if (( xSpeed < walkSpeed ))	{
			if (isJump)	xSpeed += accSpeed; 
			else		xSpeed = walkSpeed;
		}
		else xSpeed = walkSpeed;
		dir = 1;
		sprite_index = sp_pl_sk103_run;
	}
	else {	//입력 없을시 정지
		if ( xSpeed > accSpeed )		xSpeed -= accSpeed;
		else if ( xSpeed < -accSpeed )	xSpeed += accSpeed;
		else							xSpeed = 0;
		sprite_index = sp_pl_sk103_stand;
	}
	
	if (isJump)	{ sprite_index = sp_pl_sk103_jump; }
	
	if (atkProcess > 10) 
	{
		sc_pl_atkDnJ(2);
		sc_pl_comAfterSk();
		sc_pl_skComb();
	}
		
	
	if ( atkProcess > _skIndex*40 ) { canMove = 0;	atkProcess = -5; }
	
}