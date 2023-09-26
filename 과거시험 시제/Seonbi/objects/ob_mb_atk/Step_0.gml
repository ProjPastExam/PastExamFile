/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _mouse_x = device_mouse_x_to_gui(0)
var _mouse_y = device_mouse_y_to_gui(0)

with (ob_player)	
{ 
	mbAtk	= false; 
	mbAtk2	= false; 
}

if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(_mouse_x, _mouse_y, id))
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
}
else
{
	isAc = true;
}