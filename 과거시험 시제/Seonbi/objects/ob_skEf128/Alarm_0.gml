/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


sc_obPhysics();
if (!isJump && ySpeed >= 0) 
{
	with (instance_create_layer(x, y, "effect", ob_skEf128_2))
	{
		image_xscale = other.image_xscale;
	}
	instance_destroy();
}
alarm[0] = 1;
