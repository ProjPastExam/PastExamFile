// argument0 : 스프라이트

sprite_index = argument0;

TargetB = bbox_bottom - ob_player.pbottom;

arrowxSpeed = choose(7.8, 8, 8.2);
if( TargetB > 200 ) { arrowySpeed = -8; }
else if( TargetB > 60 ) { arrowySpeed = 5; }
else if( TargetB > 60 ) { arrowySpeed = -3.8; }
else { arrowySpeed = -2.3; }

grav = 0.12;

disappear = room_speed;
spriteProcess = 0;


// 플레이어 위치 추적 변수
TargetX = ob_player.x - x;
if ( TargetX < 0 ) { dir = 1; }
else { dir = -1; }