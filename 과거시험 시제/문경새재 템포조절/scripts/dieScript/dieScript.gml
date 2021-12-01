// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_dieBandit1(){
	var han = irandom_range(0, 3);
	if (han == 0) SE_Play(s_bandit01die1, global.vol);
	else if (han == 1) SE_Play(s_bandit01die2, global.vol);
	else if (han == 2) SE_Play(s_bandit01die3, global.vol);
	else SE_Play(s_bandit01die4, global.vol);
}

function sc_dieJp1(){
	var han = irandom_range(0, 2);
	if (han == 0) SE_Play(s_jpAdie1, global.vol);
	else if (han == 1) SE_Play(s_jpAdie2, global.vol);
	else SE_Play(s_jpAdie3, global.vol);
}

function sc_dieJp2(){
	var han = irandom_range(0, 2);
	if (han == 0) SE_Play(s_jpBdie1, global.vol);
	else if (han == 1) SE_Play(s_jpBdie2, global.vol);
	else SE_Play(s_jpBdie3, global.vol);
}