sprite_index = argument0;

runAwaycnt--;
if( TargetX >= 0 ) { x -= (xSpeed * 1.2); }
if( TargetX < 0 ) { x += (xSpeed * 1.2); }

if( runAwaycnt == 0 ) { state=1; runAwaycnt=60; }