// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobDmg(dmg, pene){
	var fDmg
	
	fDmg = dmg * (100 - (defence * (100 - pene)/100))/100;
	
	if (isJump) {
		var jmp = global.item3;
		fDmg += fDmg * (jmp)/10;
	}
	
	return fDmg;
}