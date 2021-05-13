// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atkDmg(){
	//기본 데미지 및 아이템 배율 적용
	var atkDmg = global.atkDmg * atkDmgScale;
	
	//일시적 버프 적용 및 타이머 초기화
	if (dmgBuffT > -1) {
		atkDmg += global.atkDmg * dmgBuff;
		dmgBuffT = -1;
	}
	
	//점프 아이템 적용
	if (itemJump > -1 && isJump) {
		atkDmg += global.atkDmg * (itemJump/5);
	}
	
	
	return atkDmg;
}