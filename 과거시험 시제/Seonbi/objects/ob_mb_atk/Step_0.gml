/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


with (ob_player)	
{ 
	mbAtk	= false; 
	mbAtk2	= false; 
}

if (sc_mobileMouse() != -1)
{
	with (ob_player)
	{
		if (other.isAc)
		{
			other.isAc = false;
			mbAtk = true;
		}
		mbAtk2 = true;
	}
}
else
{
	isAc = true;
}