// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkEf( dmg, pene, shock, mana, hitUp, hitKind, hitAfter, sprite, dir, 
					  shake = 5, iX = x, iY = y, ctChance = 0, comIndex = 0, obIndex = ob_atkEf01){
	var atk = instance_create_layer(iX, iY, "effect", obIndex);
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
	
	var ctC				= ctChance;
	if (hitKind == 0)						{ ctC = ctC + sc_pl_atkCt()*global.comCt; }
	else if (hitKind == 1 || hitKind == 10) { ctC = ctC + sc_pl_kickCt()*global.comCt; }
	else if (hitKind == 2)					{ ctC = ctC + sc_pl_fireCt()*global.comCt; }
	
	var cIndex			= comIndex;
	if (hitKind == 0)						{ cIndex = cIndex + sc_pl_atkComb(); }
	else if (hitKind == 1 || hitKind == 10) { cIndex = cIndex + sc_pl_kickComb(); }
	else if (hitKind == 2)					{ cIndex = cIndex + sc_pl_fireComb(); }
	
	atk.ctChance		= ctC;
	atk.comIndex		= cIndex;
	return atk;
}