// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// argument0 : 피격 스프라이트
// argument1 : 경직도 0: 없음 1: 약간 2: 중간 3: 세게 
function sc_mobHit(argument0, argument1) {
	image_index = argument0;
	
	sc_playerAttack();
	sc_pushedBack(argument1);
	state = 1;
}