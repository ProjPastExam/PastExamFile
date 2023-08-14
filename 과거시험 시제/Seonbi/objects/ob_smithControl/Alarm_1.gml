/// @description Insert description here
// You can write your code in this editor


if (global.itemGet[state].itemGrade < 3) {
	if (enD <= global.money) {
		global.itemGet[state].itemGrade++;
		global.money -= enD;
		SE_Play(s_smith, global.vol);
		with (ob_smithItemBox) { alarm[2] = 1; }
		
		sc_steam_item2();
	}
	else {
		uc_shake(6, 0.2);
	}
}