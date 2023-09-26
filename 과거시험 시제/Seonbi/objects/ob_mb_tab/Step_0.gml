/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _mouse_x = device_mouse_x_to_gui(0)
var _mouse_y = device_mouse_y_to_gui(0)


if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(_mouse_x, _mouse_y, id))
	{
		with (ob_roomControl)
		{
			if ( isTalk == 0 && dark == 0) 
			{
				sc_gameRoom(r_tab);
			}
		}
	}
}