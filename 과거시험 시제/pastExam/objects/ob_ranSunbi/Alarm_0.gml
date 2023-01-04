/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	sc_npcMain();
	if (talkIndex == talkq1) {
		if (global.ranStage1 == 0)	{
			global.ranStage1 = ranStage1;
			if (ranStage1 == 1) { with (ob_mobBase) { hpFull += hpFull/2;	hp += hp/2; } }
			if (ranStage1 == 3) { with (ob_mobBase) { down += 20; } }
		}
		if (global.ranStage2 == 0)	{
			global.ranStage2 = ranStage2;
			if (ranStage2 == 4) { with (ob_mobBase) { moneyDrop += moneyDrop; } }
		}
	}
	
}
else {
	image_speed = 0;
}
alarm[0] = 1;

