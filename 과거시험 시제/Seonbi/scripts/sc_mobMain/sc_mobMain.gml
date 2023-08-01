// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_mobMain(){
	if ( !isJump )			xSpeed = 0;
	if ( hitAfter > 0 )		hitAfter--;
	if ( isHpUI )	global.uiHp = hp;
	image_xscale = dir;
	
	
		
	if ( patrol ) sc_mobPatrol();
	if ( hp <= 0 ) { 
		state = -1; process = 0; hitAfter = -1;

		if (!isDie) {
			if (global.item69 > 0)
			{
				var plX = sc_pl_get("x");
				if (abs(plX - x) > 640)
				{
					global.mp += global.item69*100;
					global.skKul[0] = 0;
					global.skKul[1] = 0;
					global.skKul[2] = 0;
				}
			}
			
			with (ob_battleBox)
			{
				remMob--;
			}
			//var plX = sc_pl_get("x");
			//if (x > plX) dir = -1;
			//else dir = 1;
			moneyDropVar = round(moneyDrop * (100 + irandom_range(0, 20) + global.level*20) / 100);
			
			global.money += moneyDropVar;
			global.moneyBuffer += moneyDropVar;
			with (instance_create_layer(x, bbox_bottom, "effect", ob_moneySpawn))
			{
				moneyIndex = other.moneyDropVar;
			}
			
			if (global.clearStage >= 5) {
				var soulIndex = round(soulDrop*(1 + global.level/5));
				global.abSoul += soulIndex;
				VSLS_SetAndSave("abSoul", global.abSoul, "saveFile");
			}
			
			
			if (global.ranStage2 == 1 && global.hp < 9) {
				global.hp++;	
				instance_create_layer(0, 0, "effect", ob_healEf);	
			}
			/*
			if (!isHpUI && global.level < 2) {
				var ran		= irandom_range(0, 99);
				var ran2	= sqrt(global.hpMax - global.hp)*8;
				if (ran < ran2) {
					instance_create_layer(x, y, "effect", ob_heart);
				}
			}
			*/
			
			image_xscale = dir;
			isDie = true;
			with (ob_roomControl) {
				mobNum--;
			}
		}
	}
	if (state != 5 && state != 6 && state != 7 && state != 8) sc_mobAd();
	
	if (state == 5 || state == 6 || state == 7 || state == 8) {
		if (ctCount < counter) ctCount++;
		sc_mobKnockback();
	}
	else if (state == 9) {
		process--;
		kbIndex--;
		sprite_index = shockSp;
		if ( kbIndex > 5 ) {
			if ( hitDir == 1 || hitDir == -1 ) xSpeed = hitDir * 3.7*sqrt(kbIndex-5);
		}
		
		if (process > 75)		{ image_index = 0; }
		else if (process > 70)	{ image_index = 1; }
		else if	(process > 25)	{ image_index = 2; }
		else if	(process > 20)	{ image_index = 3; }
		else					{ image_index = 4; }
		
		if (process <= 0) {
			state = 10; delay = 10;
		}
	}
	else {
		if (ctCount > 0) ctCount = ctCount - 2;
		isStun = false;
		kbIndex = 0;
	}
}