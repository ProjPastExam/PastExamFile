// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_skData(){
	global.skMp = array_create(200, 0);
	global.skMp[0]		= 0;	//null	
	global.skMp[101]	= 300;	//연속 사격
	global.skMp[102]	= 300;	//다발 사격

	global.skMp[111]	= 300;	//강화 연속 사격
	global.skMp[112]	= 400;	//광역 사격
	global.skMp[113]	= 200;	//강화 다발 사격
	global.skMp[114]	= 300;	//화살비
	
	global.skMp[131]	= 200;	//창 찌르기
	global.skMp[132]	= 100;	//환도
	global.skMp[133]	= 200;	//협도
	
	global.skMp[141]	= 200	//당파
	global.skMp[142]	= 200	//표창
	global.skMp[143]	= 200	//화창
	global.skMp[144]	= 400;	//왜검
	global.skMp[145]	= 200;	//언월도
	global.skMp[146]	= 200;	//편곤
	
	global.skMp[161]	= 300;	//사전총통
	global.skMp[162]	= 100;	//세총통
	global.skMp[163]	= 400;	//삼총통
	
	global.skMp[171]	= 300;	//팔전총통
	global.skMp[172]	= 400;	//승자총통
	global.skMp[173]	= 300;	//쌍자총통
	
	global.skMp[181]	= 0	//일총통
	
	
	global.skKulData = array_create(200, 0);
	global.skKulData[0]		= 0;

	global.skKulData[101]	= 180;
	global.skKulData[102]	= 120;
	
	global.skKulData[111]	= 240;
	global.skKulData[112]	= 360;
	global.skKulData[113]	= 180;
	global.skKulData[114]	= 300;

	global.skKulData[131]	= 180;
	global.skKulData[132]	= 60;
	global.skKulData[133]	= 180;
	
	global.skKulData[141]	= 240;
	global.skKulData[142]	= 240;
	global.skKulData[143]	= 240;
	global.skKulData[144]	= 480;
	global.skKulData[145]	= 240;
	global.skKulData[146]	= 240;
	
	global.skKulData[161]	= 240;
	global.skKulData[162]	= 120;
	global.skKulData[163]	= 360;
	
	global.skKulData[171]	= 300;
	global.skKulData[172]	= 300;
	global.skKulData[173]	= 300;
	
	global.skKulData[181]	= 10;
}