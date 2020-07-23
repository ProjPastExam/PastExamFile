sprite_index = argument0;
image_xscale = orig_xscale * -dir;

runAwaycnt--;
if( TargetX >= 0 ) { x -= (xSpeed * 1.2); }
if( TargetX < 0 ) { x += (xSpeed * 1.2); }

if( runAwaycnt == 0 ) { state=2; runAwaycnt=60; }