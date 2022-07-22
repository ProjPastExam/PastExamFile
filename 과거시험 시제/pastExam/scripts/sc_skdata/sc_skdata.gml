// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_skData(){
	global.skMp = array_create(600, 0);
	global.skMp[0]		= 0;	//null	
	global.skMp[100]	= 200;	//편전
	global.skMp[101]	= 400;	//총
	global.skMp[102]	= 200;	//창 찌르기
	global.skMp[103]	= 100;	//환도
	global.skMp[104]	= 300;	//연사
	global.skMp[105]	= 100;	//세총통
	global.skMp[106]	= 0;	//쌍자총통
	
	
	global.skKulData = array_create(600, 0);
	global.skKulData[0]		= 0;
	global.skKulData[100]	= 120;
	global.skKulData[101]	= 180;
	global.skKulData[102]	= 120;
	global.skKulData[103]	= 120;
	global.skKulData[104]	= 120;
	global.skKulData[105]	= 90;
	global.skKulData[106]	= 60;	//장군전
}