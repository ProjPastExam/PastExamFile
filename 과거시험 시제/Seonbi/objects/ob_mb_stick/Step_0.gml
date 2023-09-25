/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (mouse_check_button(mb_left))
{
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_x_to_gui(0), id))
	{
		show_message("Hello World");
	}
}




