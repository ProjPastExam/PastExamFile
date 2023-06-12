/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
with (ob_lanSelect)
{
	state = other.state;
}
if (sc_getKey(vk_right, gp_padr))
{
	state++;
}

if (sc_getKey(vk_left, gp_padl))
{
	state--;
}


if (state < 0) state = 1;
if (state > 1) state = 0;