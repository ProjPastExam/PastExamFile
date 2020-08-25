// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobBackstep(argument0){
	
	sprite_index = argument0;
	var imgidx = 0;
	
	// 스프라이트 index 변형 코드
	// 0.33초 동안 백스텝 실행
	
	while ( backStepcnt ) {
		if ( dir < 0 ) {
			
			if ( left == 3 || right == 3) { self.x -= 0 }
			else { self.x -= 1.2; }
			
			if (backStepcnt % 10 == 0 ) {
				image_index = imgidx % 4;
				imgidx++;
			}
		}
		else { 
			if ( left == 3 || right == 3) { self.x += 0 }
			else { self.x += 1.2; }
				
			if (backStepcnt % 10 == 0 ) {
				image_index = imgidx % 4;
				imgidx++;
			}
		}
		backStepcnt--;
	}
	
	if( backStepcnt == 0 ) { 
		backStepcnt = 60;
		state = 1;
	}
}