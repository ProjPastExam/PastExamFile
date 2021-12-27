// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemSetStat(s_max, s_revise){
	//var out = random_range(s_min, s_max);
	randomize();
	var rX, rY, cosV;
	var saveX;

	rX = irandom_range(0, s_max);
	rY = random_range(0, 2);
	
	cosV = (cos(rX*pi/s_max + s_revise*pi)+1);
	if (rY > cosV) {
		rX = s_max-rX;
	}
	saveX = rX;
	
	rX = irandom_range(0, s_max);
	rY = random_range(0, 2);
	
	cosV = (cos(rX*pi/s_max + s_revise*pi)+1);
	if (rY > cosV) {
		rX = s_max-rX;
	}
	
	if (abs(rX-s_revise*s_max) > abs(saveX-s_revise*s_max)) rX = saveX;
	
	show_debug_message(rX);
	return rX;
	
}
