/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

point_x = x;
point_y = y;
with (ob_player)	
{ 
	mbRight	= false; 
	mbLeft	= false; 
	mbUp	= false; 
	mbDown	= false; 
}
if (!isActive)
{
	mIndex = sc_mobileMouse();
	if (mIndex != -1)
	{
		isActive = true;
	}
}
if (!device_mouse_check_button(mIndex, mb_left))
{
	isActive = false;
}

if (isActive)
{
	var _mouse_x = device_mouse_x_to_gui(mIndex);
	var _mouse_y = device_mouse_y_to_gui(mIndex);
	var _angle	= point_direction(x, y, _mouse_x, _mouse_y);
	var _dist	= point_distance(x, y, _mouse_x, _mouse_y);
	
	point_x = _mouse_x;
	point_y = _mouse_y;
	
	if (_dist > 60)
	{
		if ((_angle >= 0 && _angle < 60) || (_angle > 300 && _angle <= 360))
		{
			with (ob_player)	{ mbRight	= true; }
		}
		
		if (_angle > 30 && _angle <= 150)
		{
			with (ob_player)	{ mbUp		= true; }
		}
		
		if (_angle > 120 && _angle <= 240)
		{
			with (ob_player)	{ mbLeft	= true; }
		}
		
		if (_angle > 210 && _angle <= 330)
		{
			with (ob_player)	{ mbDown	= true; }
		}
	}
	if (_dist > 144)
	{
		point_x = lerp(x, _mouse_x, 144/_dist);
		point_y = lerp(y, _mouse_y, 144/_dist);
	}
}