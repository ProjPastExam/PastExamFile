// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sc_chunStart01()
{
	var _hor = 2;
	if(global.clearStage > 40) _hor = 6;
	talk1		= array_create(3);
	talkq1		= array_create(5);
	talkq2		= array_create(3);
	talkq3		= array_create(5);
	
	qst1		= array_create(3);
	qst1Index	= array_create(3);
	
	qst1[@0]	= new questionStruct(_hor,3);
	qst1[@1]	= new questionStruct(_hor,4);
	qst1[@2]	= new questionStruct(_hor,5);
	qst1Index[@0]	= talkq1;
	qst1Index[@1]	= talkq2;
	qst1Index[@2]	= talkq3;
	
	
	
	
	talk1[@0]	= new talkStruct(_hor,1);
	talk1[@1]	= new talkStruct(,,,,2,,3,qst1);
	talk1[@2]	= new talkStruct(,,,,3,qst1Index);
	
	talkq1[@0]	= new talkStruct(_hor,9,,sp_chun_face_silence);
	talkq1[@1]	= new talkStruct(_hor,10,,sp_chun_face_silence);
	talkq1[@2]	= new talkStruct(_hor,11,,sp_chun_face_silence);
	talkq1[@3]	= new talkStruct(_hor,12,,sp_chun_face_silence);
	talkq1[@4]	= new talkStruct(,,,,1 , talk1);
	
	talkq2[@0]	= new talkStruct(_hor,17,,sp_chun_face_silence);
	talkq2[@1]	= new talkStruct(_hor,18,,sp_chun_face_silence);
	talkq2[@2]	= new talkStruct(,,,,1 , talk1);
	
	talkq3[@0]	= new talkStruct(_hor,25,,sp_chun_face_silence);
	talkq3[@1]	= new talkStruct(_hor,26,,sp_chun_face_silence);
	talkq3[@2]	= new talkStruct(_hor,27,,sp_chun_face_silence);
	talkq3[@3]	= new talkStruct(_hor,28,,sp_chun_face_silence);
	talkq3[@4]	= new talkStruct(,,,,1 , talk1);
								
	talkIndex		= talk1;
}

function sc_chunSt01() {
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(4);
	talk2		= array_create(3);
	talk3		= array_create(3);
	talk4		= array_create(3);
	talk5		= array_create(3);
	talk6		= array_create(3);
	
	talk1[@0]	= new talkStruct(2,1,,sp_chun_face_angry);
	talk1[@1]	= new talkStruct(2,2,,sp_chun_face_angry);
	talk1[@2]	= new talkStruct(2,3,,sp_chun_face_angry);
	talk1[@3]	= new talkStruct(,,,,1 , talk1)
	
	talk2[@0]	= new talkStruct(2,5);
	talk2[@1]	= new talkStruct(2,6);
	talk2[@2]	= new talkStruct(,,,,1 , talk2);
	
	talk3[@0]	= new talkStruct(2,9,,sp_chun_face_angry);
	talk3[@1]	= new talkStruct(2,10,,sp_chun_face_angry);
	talk3[@2]	= new talkStruct(,,,,1 , talk3);
	
	talk4[@0]	= new talkStruct(2,13,,sp_chun_face_silence);
	talk4[@1]	= new talkStruct(2,14,,sp_chun_face_angry);
	talk4[@2]	= new talkStruct(,,,,1 , talk4);
	
	talk5[@0]	= new talkStruct(2,17,,sp_chun_face_silence);
	talk5[@1]	= new talkStruct(2,18,,sp_chun_face_silence);
	talk5[@2]	= new talkStruct(,,,,1 , talk5);
	
	talk6[@0]	= new talkStruct(2,21,,sp_chun_face_silence);
	talk6[@1]	= new talkStruct(2,22,,sp_chun_face_embar);
	talk6[@2]	= new talkStruct(,,,,1 , talk6);
	
							
	var i = irandom_range(1, 6);
	
	if (i == 1)			talkIndex = talk1;
	else if (i == 2)	talkIndex = talk2;
	else if (i == 3)	talkIndex = talk3;
	else if (i == 4)	talkIndex = talk4;
	else if (i == 5)	talkIndex = talk5;
	else if (i == 6)	talkIndex = talk6;	
}

function sc_chunSt02(){
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(4);
	talk2		= array_create(3);
	talk3		= array_create(3);
	talk4		= array_create(3);
	talk5		= array_create(3);
	talk6		= array_create(3);
	
	talk1[@0]	= new talkStruct(6,1,,sp_chun_face_angry);
	talk1[@1]	= new talkStruct(6,2,,sp_chun_face_angry);
	talk1[@2]	= new talkStruct(6,3,,sp_chun_face_angry);
	talk1[@3]	= new talkStruct(,,,,1 , talk1)
	
	talk2[@0]	= new talkStruct(6,5);
	talk2[@1]	= new talkStruct(6,6);
	talk2[@2]	= new talkStruct(,,,,1 , talk2);
	
	talk3[@0]	= new talkStruct(6,9,,sp_chun_face_angry);
	talk3[@1]	= new talkStruct(6,10,,sp_chun_face_silence);
	talk3[@2]	= new talkStruct(,,,,1 , talk3);
	
	talk4[@0]	= new talkStruct(6,13,,sp_chun_face_silence);
	talk4[@1]	= new talkStruct(6,14,,sp_chun_face_angry);
	talk4[@2]	= new talkStruct(,,,,1 , talk4);
	
	talk5[@0]	= new talkStruct(6,17,,sp_chun_face_silence);
	talk5[@1]	= new talkStruct(6,18,,sp_chun_face);
	talk5[@2]	= new talkStruct(,,,,1 , talk5);
	
	talk6[@0]	= new talkStruct(6,21,,sp_chun_face_silence);
	talk6[@1]	= new talkStruct(6,22,,sp_chun_face_silence);
	talk6[@2]	= new talkStruct(,,,,1 , talk6);
							
	var i = irandom_range(1, 6);
	
	if (i == 1)			talkIndex = talk1;
	else if (i == 2)	talkIndex = talk2;
	else if (i == 3)	talkIndex = talk3;
	else if (i == 4)	talkIndex = talk4;
	else if (i == 5)	talkIndex = talk5;
	else if (i == 6)	talkIndex = talk6;
}
	
function sc_chunSt02Vil(){
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(3);
	
	talk1[@0]	= new talkStruct(6,25,,sp_chun_face_angry);
	talk1[@1]	= new talkStruct(6,26,,sp_chun_face_angry);
	talk1[@2]	= new talkStruct(,,,,1 , talk1)
	
	talkIndex = talk1;

}

function sc_chunSt03(){
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(4);
	talk2		= array_create(3);
	talk3		= array_create(4);
	talk4		= array_create(3);
	talk5		= array_create(3);
	//talk6		= array_create(3);
	
	talk1[@0]	= new talkStruct(10,1);
	talk1[@1]	= new talkStruct(10,2);
	talk1[@2]	= new talkStruct(10,3,,sp_chun_face_angry);
	talk1[@3]	= new talkStruct(,,,,1 , talk1)
	
	talk2[@0]	= new talkStruct(10,5);
	talk2[@1]	= new talkStruct(10,6,,sp_chun_face_embar);
	talk2[@2]	= new talkStruct(,,,,1 , talk2);
	
	talk3[@0]	= new talkStruct(10,9,,sp_chun_face_angry);
	talk3[@1]	= new talkStruct(10,10,,sp_chun_face_angry);
	talk3[@2]	= new talkStruct(10,11,,sp_chun_face_angry);
	talk3[@3]	= new talkStruct(,,,,1 , talk3);
	
	talk4[@0]	= new talkStruct(10,13,,sp_chun_face_silence);
	talk4[@1]	= new talkStruct(10,14,,sp_chun_face_angry);
	talk4[@2]	= new talkStruct(,,,,1 , talk4);
	
	talk5[@0]	= new talkStruct(10,17,,sp_chun_face_angry);
	talk5[@1]	= new talkStruct(10,18,,sp_chun_face_angry);
	talk5[@2]	= new talkStruct(,,,,1 , talk5);
	
	//talk6[@0]	= new talkStruct(10,21,,sp_chun_face_silence);
	//talk6[@1]	= new talkStruct(10,22,,sp_chun_face_silence);
	//talk6[@2]	= new talkStruct(,,,,1 , talk6);
	
	
	//talkIndex = talk1;
	var i = irandom_range(1, 5);
	
	if (i == 1)			talkIndex = talk1;
	else if (i == 2)	talkIndex = talk2;
	else if (i == 3)	talkIndex = talk3;
	else if (i == 4)	talkIndex = talk4;
	else if (i == 5)	talkIndex = talk5;
	//else if (i == 6)	talkIndex = talk6;
}
	
function sc_chunSt03Vil(){
	image_alpha = 0.8;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(3);
	
	talk1[@0]	= new talkStruct(10,25,,sp_chun_face_silence);
	talk1[@1]	= new talkStruct(10,26,,sp_chun_face_angry);
	talk1[@2]	= new talkStruct(,,,,1 , talk1)

	talkIndex = talk1;

}


function sc_chunSt04(){
	image_alpha = 0.8;
	var csvHor = 14;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(4);
	talk2		= array_create(3);
	talk3		= array_create(4);
	talk4		= array_create(3);
	talk5		= array_create(3);
	talk6		= array_create(3);
	
	talk1[@0]	= new talkStruct(csvHor,1);
	talk1[@1]	= new talkStruct(csvHor,2,,sp_chun_face_angry);
	talk1[@2]	= new talkStruct(csvHor,3,,sp_chun_face_angry);
	talk1[@3]	= new talkStruct(,,,,1 , talk1)
	
	talk2[@0]	= new talkStruct(csvHor,5);
	talk2[@1]	= new talkStruct(csvHor,6);
	talk2[@2]	= new talkStruct(,,,,1 , talk2);
	
	talk3[@0]	= new talkStruct(csvHor,9);
	talk3[@1]	= new talkStruct(csvHor,10,,sp_chun_face_silence);
	talk3[@2]	= new talkStruct(csvHor,11,,sp_chun_face_silence);
	talk3[@3]	= new talkStruct(,,,,1 , talk3);
	
	talk4[@0]	= new talkStruct(csvHor,13,,sp_chun_face_silence);
	talk4[@1]	= new talkStruct(csvHor,14,,sp_chun_face_angry);
	talk4[@2]	= new talkStruct(,,,,1 , talk4);
	
	talk5[@0]	= new talkStruct(csvHor,17,,sp_chun_face_angry);
	talk5[@1]	= new talkStruct(csvHor,18,,sp_chun_face_angry);
	talk5[@2]	= new talkStruct(,,,,1 , talk5);
	
	talk6[@0]	= new talkStruct(csvHor,21);
	talk6[@1]	= new talkStruct(csvHor,22,,sp_chun_face_silence);
	talk6[@2]	= new talkStruct(,,,,1 , talk6);
	
	
	//talkIndex = talk1;
	var i = irandom_range(1, 6);
	
	if (i == 1)			talkIndex = talk1;
	else if (i == 2)	talkIndex = talk2;
	else if (i == 3)	talkIndex = talk3;
	else if (i == 4)	talkIndex = talk4;
	else if (i == 5)	talkIndex = talk5;
	else if (i == 6)	talkIndex = talk6;
}
	
function sc_chunSt04Vil(){
	image_alpha = 0.8;
	var csvHor = 14;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(2);
	
	talk1[@0]	= new talkStruct(csvHor,25,,sp_chun_face_silence);
	talk1[@1]	= new talkStruct(,,,,1 , talk1)

	talkIndex = talk1;

}


function sc_chunSt05(){
	image_alpha = 0.8;
	var csvHor = 18;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(3);
	talk2		= array_create(3);
	talk3		= array_create(3);
	talk4		= array_create(3);
	talk5		= array_create(3);
	
	talk1[@0]	= new talkStruct(csvHor,1,,sp_chun_face_angry);
	talk1[@1]	= new talkStruct(csvHor,2,,sp_chun_face_angry);
	talk1[@2]	= new talkStruct(,,,,1 , talk1)
	
	talk2[@0]	= new talkStruct(csvHor,5,,sp_chun_face_angry);
	talk2[@1]	= new talkStruct(csvHor,6,,sp_chun_face_angry);
	talk2[@2]	= new talkStruct(,,,,1 , talk2);
	
	talk3[@0]	= new talkStruct(csvHor,9,,sp_chun_face_silence);
	talk3[@1]	= new talkStruct(csvHor,10,,sp_chun_face_silence);
	talk3[@2]	= new talkStruct(,,,,1 , talk3);
	
	talk4[@0]	= new talkStruct(csvHor,13,,sp_chun_face_silence);
	talk4[@1]	= new talkStruct(csvHor,14,,sp_chun_face_angry);
	talk4[@2]	= new talkStruct(,,,,1 , talk4);
	
	talk5[@0]	= new talkStruct(csvHor,17,,sp_chun_face_angry);
	talk5[@1]	= new talkStruct(csvHor,18,,sp_chun_face_angry);
	talk5[@2]	= new talkStruct(,,,,1 , talk5);
	
	
	//talkIndex = talk1;
	var i = irandom_range(1, 5);
	
	if (i == 1)			talkIndex = talk1;
	else if (i == 2)	talkIndex = talk2;
	else if (i == 3)	talkIndex = talk3;
	else if (i == 4)	talkIndex = talk4;
	else if (i == 5)	talkIndex = talk5;
	//else if (i == 6)	talkIndex = talk6;
}
	
function sc_chunSt05Vil(){
	image_alpha = 0.8;
	var csvHor = 18;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(2);
	
	talk1[@0]	= new talkStruct(csvHor,25,,sp_chun_face_silence);
	talk1[@1]	= new talkStruct(,,,,1 , talk1)

	talkIndex = talk1;

}


function sc_chunSt06(){
	image_alpha = 0.8;
	var csvHor = 22;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(3);
	talk2		= array_create(3);
	talk3		= array_create(3);
	talk4		= array_create(3);

	talk1[@0]	= new talkStruct(csvHor,1,,sp_chun_face_smile);
	talk1[@1]	= new talkStruct(csvHor,2,,sp_chun_face_smile);
	talk1[@2]	= new talkStruct(,,,,1 , talk1)
	
	talk2[@0]	= new talkStruct(csvHor,5,,sp_chun_face_angry);
	talk2[@1]	= new talkStruct(csvHor,6,,sp_chun_face_angry);
	talk2[@2]	= new talkStruct(,,,,1 , talk2);
	
	talk3[@0]	= new talkStruct(csvHor,9,,sp_chun_face_angry);
	talk3[@1]	= new talkStruct(csvHor,10,,sp_chun_face_smile);
	talk3[@2]	= new talkStruct(,,,,1 , talk3);
	
	talk4[@0]	= new talkStruct(csvHor,13,,sp_chun_face_smile);
	talk4[@1]	= new talkStruct(csvHor,14,,sp_chun_face_smile);
	talk4[@2]	= new talkStruct(,,,,1 , talk4);
	
	
	
	//talkIndex = talk1;
	var i = irandom_range(1, 4);
	
	if (i == 1)			talkIndex = talk1;
	else if (i == 2)	talkIndex = talk2;
	else if (i == 3)	talkIndex = talk3;
	else if (i == 4)	talkIndex = talk4;
	//else if (i == 5)	talkIndex = talk5;
	//else if (i == 6)	talkIndex = talk6;
}
	
function sc_chunSt06Vil(){
	image_alpha = 0.8;
	var csvHor = 22;
	
	sc_npcCreate();
	isRest = false;
	
	talk1		= array_create(2);
	
	talk1[@0]	= new talkStruct(csvHor,25,,sp_chun_face_smile);
	talk1[@1]	= new talkStruct(,,,,1 , talk1)

	talkIndex = talk1;

}