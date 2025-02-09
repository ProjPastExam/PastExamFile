// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkEf( dmg, pene, shock, mana, hitUp, hitKind, hitAfter, sprite, dir, 
	shake = 5, iX = x, iY = y, ctChance = 0, comIndex = 0, obIndex = ob_atkEf01, comDmg = 0){
	var atk = instance_create_layer(iX, iY, "effect", obIndex);
	
	if (comDmg != -1)
	{
		var comDmgIndex = 0;
		if (hitKind == 0)						{ comDmgIndex = sc_pl_atkComb(); }
		else if (hitKind == 1 || hitKind == 10) { comDmgIndex = sc_pl_kickComb(); }
		else if (hitKind == 2 || hitKind == 11)	{ comDmgIndex = sc_pl_fireComb(); }
		if (global.item10 == 0) dmg = dmg * (1 + global.comCt*(comDmg+comDmgIndex)/100);
	}
	
	atk.dmg				= dmg;
	atk.pene			= pene;
	atk.shock			= shock;
	atk.mana			= mana;
	atk.hitUp			= hitUp;
	atk.hitKind			= hitKind;
	atk.hitAfter		= hitAfter;		if (hitAfter != 0) atk.alarm[2] = hitAfter;
	atk.sprite_index	= sprite;
	atk.image_xscale	= dir;
	atk.shake			= shake;
	atk.comIndex		= comIndex;
	
	atk.dotStack		= 0;
	
	var ctC				= ctChance;
	if (hitKind == 0)						{ ctC = ctC + sc_pl_atkCt()*100; }
	else if (hitKind == 1 || hitKind == 10) { ctC = ctC + sc_pl_kickCt()*100; }
	else if (hitKind == 2 || hitKind == 11)	{ ctC = ctC + sc_pl_fireCt()*100; }
	if (ctChance == -1)	ctC = -1;
	atk.ctChance		= ctC;
	
	/*
	var cIndex			= comIndex;
	if (hitKind == 0)						{ cIndex = cIndex + sc_pl_atkComb(); }
	else if (hitKind == 1 || hitKind == 10) { cIndex = cIndex + sc_pl_kickComb(); }
	else if (hitKind == 2 || hitKind == 11)	{ cIndex = cIndex + sc_pl_fireComb(); }
	atk.comIndex		= cIndex;
	*/
	return atk;
}