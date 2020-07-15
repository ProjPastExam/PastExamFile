// 몬스터 공격모션 실행
// sprite_index = sp_mobAtk;


if(global.hp >= mob_dmg) { 
	global.hp -= mob_dmg;
}
else if(global.hp < mob_dmg) { global.hp = 0; }

sprite_index = sp_mobBanditAttack;
if ( mobatkProcess < 5 ) { image_index = 0; }
else if ( mobatkProcess < 10 )	{ image_index = 1; }
else if ( mobatkProcess < 15 ) { image_index = 2; }
else if ( mobatkProcess < 20 ) { image_index = 3; }
else if ( mobatkProcess < 25 )	{ image_index = 4; }
else if ( mobatkProcess < 30 )	{ image_index = 5; }
else { image_index = 0; }
// image_index = sp_mobAtk+1; // 지정 스프라이트
// 항상 image_index를 0으로 초기화 해주어야 함.

canAttack = false;