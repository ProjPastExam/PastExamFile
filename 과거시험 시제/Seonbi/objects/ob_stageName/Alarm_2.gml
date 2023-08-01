/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다



alpIndex -= 0.03;
if (isEnd)
{
	isEnd = false;
	with (ob_roomControl)
	{
		alarm[2] = 1;
	}
}

if (alpIndex < 0) 
{
	
	instance_destroy();
}
alarm[2] = 1;
