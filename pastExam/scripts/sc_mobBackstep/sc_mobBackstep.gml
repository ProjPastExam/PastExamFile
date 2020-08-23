// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobBackstep(argument0){
	
	sprite_index = argument0;
	
	// 스프라이트 index 변형 코드
	// 0.3 ~ 0.5초 동안 백스텝 실행
	
	if ( dir < 0) { x -= 60; }
	else { x += 60; }
	
	state = 2;
}