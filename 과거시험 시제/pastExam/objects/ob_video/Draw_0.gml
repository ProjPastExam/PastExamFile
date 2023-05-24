/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (videoPlay)
{
	if (!surface_exists(sIndex))	sIndex = surface_create(1920, 1080);
	
	var vId = video_draw()[1];
	surface_copy(sIndex, 0, 0, vId);
	draw_surface(sIndex, 0, 0);
}