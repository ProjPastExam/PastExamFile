/// @description Insert description here
// You can write your code in this editor


if (global.itemGet[state].itemGrade < 3) {
	if (enD <= global.money) {
		global.itemGet[state].itemGrade++;
		global.money -= enD;
		
		with (ob_smithItemBox) { alarm[2] = 1; }
	}
	else {
		uc_shake(6, 0.2);
	}
}