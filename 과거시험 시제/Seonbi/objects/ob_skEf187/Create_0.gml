/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
sc_obPValue();

hitArray	= array_create(hitNum, 0);
hitSum		= 0;
isHit		= false;
isCritic	= true;
dotStack	= 0;

parEf = part_type_create();

//part_type_color1( e01, c_red );
part_type_sprite	( parEf, sp_pl_sk176Ef3, false, true, false );
part_type_size		( parEf, 1, 1, -0.04, 0 );
part_type_speed		( parEf, 0, 0, 0, 0 );
part_type_alpha2	( parEf, 1, 0);
part_type_life		( parEf, 15, 15);


alarm[0] = 1;
alarm[1] = 2;
alarm[5] = 3;