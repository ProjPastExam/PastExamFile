/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (state == 14)
{
	state = 15;
}
if (state == 16)
{
	state = 17;
}
if (state == -1)
{
	with (ob_sinBoss)
	{
		hp -= 120;
		part_type_color3(global.hitEf01T, c_white, c_yellow, c_black);

		part_particles_create( global.hitEf, x, y, global.hitEf01T, 10 );
		part_type_orientation( global.hitEf_k01, 0, 360, 0, 0, 0 );
		part_particles_create( global.hitEf, x, y, global.hitEf_k01, 1 );
	}
	instance_destroy();
}