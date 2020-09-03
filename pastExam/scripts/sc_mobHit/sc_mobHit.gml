// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// argument0 : 피격 스프라이트
// argument1 : 경직도 0: 없음 1: 약간 2: 중간 3: 세게 
function sc_mobHit(argument0) {
	image_index = argument0;
	var spTime = 8;
	
	canAttack = false;
	mobHitProcess += 1;
	sc_playerAttack();
	
	if ( mobHitProcess < spTime*5 )			{ image_index = 0; }
	else if ( mobHitProcess < spTime*20 )	{ image_index = 1; }
	else { mobHitProcess = 0; state = 4; }
}