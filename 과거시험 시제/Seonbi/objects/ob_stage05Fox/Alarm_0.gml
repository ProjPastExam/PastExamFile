/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
with (ob_player)
{
	other.plX = x;
}
if (x - plX < 500)
{
	isRun = true;
	sprite_index = sp_fox_run;
}
if (isRun)
{
	x += 12;
}


alarm[0] = 1;