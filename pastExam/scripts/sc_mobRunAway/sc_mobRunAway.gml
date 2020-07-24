sprite_index = argument0;


if( runAwaycnt == 60 ) {
	xSpeed *= -1.2;
}

runAwaycnt--;
if ( ( left == 3 || right == 3) ) { if( runAwaycnt <= 3 ) { xSpeed *= -1; } }
else { x += xSpeed; }

if( runAwaycnt == 0 ) { 
	state=1; 
	runAwaycnt=60;
	xSpeed /= 1.2;
}