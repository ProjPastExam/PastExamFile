/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (sc_mobileMouse() != -1)
{
	with (ob_roomControl)
	{
		if ( isTalk == 0 && dark == 0) 
		{
			sc_gameRoom(r_tab);
		}
	}
}