// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_skSpawn(stage = 0){
//var i = 0;
	while (1) {
		randomize();
		var grade	= 0;
		var atk		= irandom_range(0, 2);
		var index = irandom_range(0, 100);
		if (index < stage*sqrt(stage+1)*8 + 10)	grade = 1;
		if (index < stage*sqrt(stage+1)*2)		grade = 2;
		
		if (grade == 0) 
		{
			if		(atk == 0)	{ skNum = irandom_range(101, 103); }
			else if	(atk == 1)	{ skNum = irandom_range(131, 133); }
			else				{ skNum = irandom_range(161, 163); }
		}
		else if (grade == 1) 
		{
			if		(atk == 0)	{ skNum = irandom_range(111, 115); }
			else if	(atk == 1)	{ skNum = irandom_range(141, 146); }
			else				{ skNum = irandom_range(171, 173); }
		}
		else 
		{
			if		(atk == 0)	{ skNum = irandom_range(126, 127); }
			else if	(atk == 1)	{ skNum = irandom_range(156, 156); }
			else				{ skNum = irandom_range(186, 187); }
		}
		
		var check = true;
		if (global.sk1 == skNum) check = false;
		if (global.sk2 == skNum) check = false;
		if (global.sk3 == skNum) check = false;
		var j = 0;
		with (ob_sk) {
			if (variable_instance_exists(id, "skNum")) {
				if (other.skNum == skNum)	{ j++; } 
			}
		}
		if (j > 1) { check = false; }
		if (check) break;
		//i++;
		//if (i > 60) break;
	}
}