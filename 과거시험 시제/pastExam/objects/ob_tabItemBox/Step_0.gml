/// @description Insert description here
// You can write your code in this editor
if (isBreak) {
	if (tabIndex == itemNum+3 && global.itemGet[itemNum] != NULL) {
		global.itemGet[itemNum] = NULL;
		global.itemSum--;
		sc_itemSort();
	}
	alarm[2] = 1;
	isBreak = false;
}