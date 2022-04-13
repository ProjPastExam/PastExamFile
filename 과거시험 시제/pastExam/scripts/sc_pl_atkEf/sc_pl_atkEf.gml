// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkEf( dmg, pene, shock, mana, hitUp, hitKind, hitAfter, sprite, dir, 
					  shake = 5, iX = x, iY = y, ctChance = 0, comIndex = 0){
	var atk = instance_create_layer(iX, iY, "effect", ob_atkEf01);
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
	atk.comIndex		= comIndex + global.comIndex;
	
	var ctC				= ctChance;
	if (hitKind == 0)						{ ctC = ctC + sc_pl_atkCt(); }
	else if (hitKind == 1 || hitKind == 10) { ctC = ctC + sc_pl_kickCt(); }
	else if (hitKind == 2)					{ ctC = ctC + sc_pl_fireCt(); }
	
	atk.ctChance		= ctC;
	return atk;
}