/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (hitSum >= hitNum) return;

var hitId = other.id;
if (hitId.hp <= 0) return;
for (var i = 0; i < hitSum; i++) {
	if (hitArray[i] == hitId) return;
}

if (global.comCt < 100) {
	if (hitSum == 0) global.comCt += comIndex;
	global.comCt += 1;
	//else global.comCt += comIndex/2;
}
global.comCtAlarm = global.comAlarm
if (global.item5 > 0)	global.comCtAlarm += 60 + global.item5 * 30;
hitArray[hitSum] = hitId;
var dir = image_xscale / abs(image_xscale);
sc_boxHit(other, dmg, mana, hitKind, dir, ctChance, dotStack);
if (shake > 0) { uc_shake(shake, 0.1); }

hitSum++;