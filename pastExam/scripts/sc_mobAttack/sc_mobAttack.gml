//공격모션 실행
sprite_index = sp_mobAtk;
if(ob_player.hp >= mob_dmg) { 
	ob_player.hp -= mob_dmg;
}
else if(ob_player.hp < mob_dmg) { ob_player.hp = 0; }


// image_index = sp_mobAtk+1; // 지정 스프라이트
// 항상 image_index를 0으로 초기화 해주어야 함.

canAttack = false;