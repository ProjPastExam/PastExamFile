// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobBackstep(argument0){
	
	sprite_index = argument0;
	var spTime = 1;
	
	// 스프라이트 index 변형 코드
	// 1초 동안 백스텝 실행
	
	backStepcnt += 1;
	if( backStepcnt < spTime*25 && dir < 0 ) { x -= 3.5; }
	if( backStepcnt < spTime*25 && dir > 0 ) { x += 3.5; }
	
	if ( backStepcnt == 2 ) { ySpeed -= 1.8; }
	if ( backStepcnt < spTime*5 )			{ image_index = 0; }
	else if ( backStepcnt < spTime*10 )		{ image_index = 1; }
	else if ( backStepcnt < spTime*15 )		{ image_index = 2; }
	else if ( backStepcnt < spTime*20 )		{ image_index = 3; }
	else if ( backStepcnt < spTime*25 )		{ image_index = 4; }
	else if ( backStepcnt < spTime*30 )		{ image_index = 5; }
	else if ( backStepcnt < spTime*35+1 )	{ image_index = 6; }
	else { backStepcnt = 0; }
	
	if( backStepcnt == 35 ) { 
		backStepcnt = 0;
		state = 3;
	}
}