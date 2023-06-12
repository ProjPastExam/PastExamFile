// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_pl_comCritic(){
	if (global.comCtAlarm > 0) global.comCtAlarm--;
	else if (global.comCt > 0) global.comCt--;
	
	if (global.comCt < 0) global.comCt = 0;
	if (global.comCt > 100) global.comCt = 100;
}