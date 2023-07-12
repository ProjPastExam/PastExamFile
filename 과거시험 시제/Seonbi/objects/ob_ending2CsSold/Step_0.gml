/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var state = ob_roomControl.talkCnt;

if (state == 11) 
{
	image_xscale = -1;
	sprite_index = sp_ed2Sold_stand2;
}
if (state == 20 && isActive)
{
	isActive = false;
	alarm[1] = 8;
}

/*
if (state == 9) {
	with (ob_player) {
		x -= 7;
	}
}
*/