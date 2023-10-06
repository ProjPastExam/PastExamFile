/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
with (ob_player)	
{ 
	mbSk1	= false; 
	mbSk12	= false; 
}

if (sc_mobileMouse() != -1)
{
	with (ob_player)
	{
		if (other.isAc)
		{
			other.isAc = false;
			mbSk1 = true;
		}
		mbSk12 = true;
	}
}
else
{
	isAc = true;
}







