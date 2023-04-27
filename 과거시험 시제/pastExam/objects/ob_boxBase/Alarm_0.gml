/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if ( sc_getRoomValue("pause") == 0 ) {
	sc_boxMain();
	
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;