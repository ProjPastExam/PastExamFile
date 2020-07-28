// argument0 : 스프라이트

sprite_index = argument0;

arrowxSpeed = 8;
arrowySpeed = -3;
grav = 0.12;

disappear = 60;
spriteProcess = 0;


// 플레이어 위치 추적 변수
TargetX = ob_player.x - x;
if ( TargetX < 0 ) { dir = 1; }
else { dir = -1; }