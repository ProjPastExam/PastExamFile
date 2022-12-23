/// @description Insert description here
// You can write your code in this editor

if (global.itemGet[state] == NULL) {
	enD = 0;
}
else {
	enD = global.smith1 * global.itemGet[state].itemGrade;
}

if (select == 0) {
	if (sc_getKey(global.btLeft, gp_padl, 0)) {
		if (state == 0 || state == 3) { state += 2; }
		else { state--; }
	}
	
	if (sc_getKey(global.btRight, gp_padr, 0)) {
		if (state == 2 || state == 5) { state -= 2; }
		else { state++; }
	}
	
	if (sc_getKey(global.btUp, gp_padu, 0)) {
		if (state < 3) { state += 3; }
		else { state -= 3; }
	}
	
	if (sc_getKey(global.btDown, gp_padd, 0)) {
		if (state > 2) { state -= 3; }
		else { state += 3; }
	}
	
	if (sc_getKey(global.btInter, gp_face4, 0) ) {
		if (global.itemGet[state] != NULL && global.itemGet[state].itemGrade < 3) {
			SE_Play(s_talk, global.vol);
			select = 1;
			select2 = 0;
		}
		else {
			uc_shake(4, 0.2);
		}
	}
	if (sc_getKey(global.btEsc, global.gpEsc, 0) ) {
		room_goto(global.roomBuffer);
	}
}
else if (select == 1) {
	if (global.itemGet[state].itemGrade >= 3) {
		select = 0;
		select2 = 0;
	}
	
	if (sc_getKey(global.btUp, gp_padu, 0)) {
		if (select2 == 0) { select2 = 1; }
		else { select2--; }
	}
	
	if (sc_getKey(global.btDown, gp_padd, 0)) {
		if (select2 == 1) { select2 = 0; }
		else { select2++; }
	}
	
	if (sc_getKey(global.btInter, gp_face4, 0) ) {
		if (select2 == 0) {
			alarm[1] = 1;
		}
		else if (select2 == 1) { 
			select = 0;	
			select2 = 0;	
			SE_Play(s_talk, global.vol); 
		}
	}
	
	if (sc_getKey(global.btEsc, global.gpEsc, 0) ) {
		select = 0;
	}
}


with (ob_smithItemBox) {
	state	= other.state;
	select	= other.select;
}
with (ob_smithItemInfo) {
	state	= other.state;
	select	= other.select;
}
with (ob_smithItemInfo2) {
	state	= other.state;
	select	= other.select;
}
with (ob_smithSelectImage) {
	state	= other.state;
	select	= other.select;
}
with (ob_smithButton1) {
	state	= other.state;
	select	= other.select;
	select2	= other.select2;
	enD		= other.enD;
}