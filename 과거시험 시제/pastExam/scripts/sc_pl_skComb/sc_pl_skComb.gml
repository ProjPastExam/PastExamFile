// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_skComb(){
	if ( nextAtk == -1 && global.mp >= global.skMp[global.sk1] && global.skKul[0] == 0 ) 
		{ nextAtk = 0; atkProcess = 0; canMove = global.sk1; skState = 0; }
	if ( nextAtk == -2 && global.mp >= global.skMp[global.sk2] && global.skKul[1] == 0) 
		{ nextAtk = 0; atkProcess = 0; canMove = global.sk2; skState = 1; }
	if ( nextAtk == -3 && global.mp >= global.skMp[global.sk3] && global.skKul[2] == 0) 
		{ nextAtk = 0; atkProcess = 0; canMove = global.sk3; skState = 2; }
}