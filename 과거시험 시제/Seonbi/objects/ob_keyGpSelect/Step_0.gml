/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (sc_getKey(vk_enter, gp_face1) || sc_getKey(vk_space, gp_face2) ||
	sc_getKey(ord("F"), gp_face3) || sc_getKey(ord("X"), gp_face4))
{
	if (state == keyGpIndex) alarm[0] = 1;
}