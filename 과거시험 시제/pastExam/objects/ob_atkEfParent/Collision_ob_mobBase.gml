/// @description Insert description here
// You can write your code in this editor

if (hitSum >= hitNum) return;

var hitId = other.id;
if (hitId.hp <= 0) return;
for (var i = 0; i < hitSum; i++) {
	if (hitArray[i] == hitId) return;
}

if (global.comCt < 100) {
	if (hitSum == 0) global.comCt += comIndex;
	else global.comCt += comIndex/2;
}
global.comCtAlarm = global.comAlarm + global.item5 * 90;
hitArray[hitSum] = hitId;
sc_mobHit(other, dmg, pene, shock, mana, hitUp, hitKind, image_xscale, ctChance);
if (shake > 0) { uc_shake(shake, 0.1); }

hitSum++;