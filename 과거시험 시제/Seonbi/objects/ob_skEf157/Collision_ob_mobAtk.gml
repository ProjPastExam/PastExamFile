/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

with (other)
{
	if (isAtk)
	{
		isAtk = false;
		image_alpha = 0.5;
		var ang = point_direction(other.x, other.y+100, x, y);
		//arctan2(other.y+100-y, other.x-x)*180/pi;
		part_type_direction( global.hitEf01T, ang-45, ang+45, 0, 0 );
		part_type_color3(global.hitEf01T, c_white, c_yellow, c_black);
		
		part_particles_create( global.hitEf, (x+other.x)/2, (y+other.y)/2, global.hitEf01T, 25 );
		//instance_destroy();
	}
}
