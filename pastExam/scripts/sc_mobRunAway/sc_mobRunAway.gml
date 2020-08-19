function sc_mobRunAway(argument0, argument1) {
	sprite_index = argument0;		// 스프라이트 이름
	var runTime = 30*argument1;		// 1: 0.5초, 2: 1초


	if( runAwaycnt == runTime ) {
		xSpeed *= -runSpeed;
	}

	runAwaycnt--;
	if ( ( left == 3 || right == 3) ) { if( runAwaycnt % 15 == 0 ) { xSpeed *= -1; } }
	else { x += xSpeed; }

	if( runAwaycnt == 0 ) { 
		state=1; 
		runAwaycnt = runTime; 
		xSpeed /= runSpeed;
	}


}
