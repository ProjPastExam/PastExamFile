/// @description Insert description here
// You can write your code in this editor

if (hitSum >= hitNum) return;

var hitId = other.id;
if (hitId.hp <= 0) return;
for (var i = 0; i < hitSum; i++) {
	if (hitArray[i] == hitId) return;
}

hitArray[hitSum] = hitId;
sc_mobHit(other, dmg, pene, shock, mana, hitUp, hitKind, image_xscale);

hitSum++;