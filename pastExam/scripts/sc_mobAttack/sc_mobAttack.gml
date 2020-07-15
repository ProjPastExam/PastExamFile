// 몬스터 공격모션 실행
// sprite_index = sp_mobAtk;


if(global.hp >= mob_dmg) { 
	global.hp -= mob_dmg;
}
else if(global.hp < mob_dmg) { global.hp = 0; }


// image_index = sp_mobAtk+1; // 지정 스프라이트
// 항상 image_index를 0으로 초기화 해주어야 함.

canAttack = false;