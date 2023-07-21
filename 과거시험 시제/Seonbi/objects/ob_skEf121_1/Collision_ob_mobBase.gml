/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (hitSum >= hitNum) return;

var hitId = other.id;
if (hitId.hp <= 0) return;
for (var i = 0; i < hitSum; i++) {
	if (hitArray[i] == hitId) return;
}

if (isActive)
{
	var atk = sc_pl_atkEf(sc_pl_atkDmg()*2, sc_pl_atkPene(), sc_pl_atkShock(), 0, 
			0, 0, 5, sp_pl_sk126Ef2, image_xscale,, other.x, other.bbox_bottom,,,ob_skEf121_2);
	//atk.trackId = other.id;
	isActive = false;
	SE_Play(s_sk126_2, global.vol);
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
sc_mobHit(other, dmg, pene, shock, mana, hitUp, hitKind, dir, ctChance, dotStack);
if (shake > 0) { uc_shake(shake, 0.1); }
other.sk121Index = 0;

hitSum++;