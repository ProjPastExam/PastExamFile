function sc_Axe(argument0) {
	// argument0 : 스프라이트

	sprite_index = argument0;
	TargetB = bbox_bottom - sc_getPlayer("bbox_bottom") + 100;

	if( TargetB > 150 ) { arrowySpeed = -7; arrowxSpeed = 3; }
	else if( TargetB > 80 ) { arrowySpeed = -5; arrowxSpeed = 4.5; }
	else if( TargetB > -10 ) { arrowySpeed = -3; arrowxSpeed = 7; }
	else { arrowySpeed = -2.3; arrowxSpeed = 8; }

	grav = 0.2;

	disappear = room_speed;
	spriteProcess = 0;


	// 플레이어 위치 추적 변수
	TargetX = ob_player.x - x;
	if ( TargetX < 0 ) { dir = 1; }
	else { dir = -1; }
}
