/// @description Insert description here
// You can write your code in this editor

if ( pause > 0 ) pause--;
if ( global.gameEnd ) {
	alarm[10] = 1;
	global.gameEnd = false;
	//room_persistent = false;

}
//if ( slow > 0 )	slow--;
if (room_persistent) {
	room_persistent = false;
	//application_surface_draw_enable(true);
	BGM_Set(global.volBgm, 0);
	if (global.camBufferX != NULL) {
		uc_set_x(global.camBufferX);
		uc_set_y(global.camBufferY);
		uc_set_target_position(global.camBufferX, global.camBufferY);
		global.camBufferX = NULL
		global.camBufferY = NULL
		global.roomBuffer = NULL;
	}
	with (ob_player) {itemCheck = true;}
}

if ( pause == -2 ) {
	instance_create_depth(x, y, 0, ob_demoUnpause);
	instance_create_depth(x, y, 0, ob_demoMain);
	instance_create_depth(x, y, 0, ob_demoSetting);
	pause = -1;
}
else if (pause == -9) { pause = 0; }
else if (pause == -20) { pause = -21; }

if (hpProcess > 0) hpProcess--;

//if (slow == 0) room_speed = 60;
//else room_speed = 15;

if ( isTalk == 1 )		{ 
	//isGUI = false; isTalk = 2;
	//SE_Play(s_talk, global.vol);
	//if (instance_exists(ob_player)) ob_player.canMove = -10;
}
else if ( isTalk == 2) {
	if (sc_getKey(global.btUp, global.gpUp, 0)) {
		if (questionState == 0)	questionState = questionNum-1;
		else					questionState--;
	}
	
	if (sc_getKey(global.btDown, global.gpDown, 0)) {
		if (questionState >= questionNum-1)	questionState = 0;
		else								questionState++;
	}
}
else if ( isTalk == 3 )	{ 
	//isGUI = true; isTalk = 0;
	//with (ob_player) {canMove = 0;}
	//if (instance_exists(ob_player)) ob_player.canMove = 0;
}
else if ( isTalk == 4 ) {
	isGUI = false;
}
else if ( isTalk == 5) {
	isGUI = false;
	if ( sc_getKey(global.btAtk, global.gpAtk, 0) || sc_getKey(global.btInter, global.gpInter, 0) ) {
		talkCnt++;
		with (ob_csParent) {
			active = true;
		}
		//ob_csParent.active = true;
	}
}



if ( sc_getKey(global.btTap, global.gpTap, 0) && global.hp > 0 ) {
	if ( isTalk == 0 && dark == 0) {
		sc_gameRoom(r_tab);
	}
}

if ( sc_getKey(global.btEsc, global.gpEsc, 0) && global.hp > 0  ) {
	if ( isTalk == 0 && dark == 0) {
		sc_gameRoom(r_setting);
	}
	
	if (isCt) {
		alarm[7] = 1;
		BGS_Set(0, 0);
	}
}

if (isEnhance) {
	isEnhance = false;
	sc_gameRoom(r_enhance);
}

if (isSmith) {
	isSmith = false;
	sc_gameRoom(r_smith);
}

if (global.abSoulMax <= global.abSoul && global.abPointMax < 40) {
	global.abPointMax++;
	global.abPoint++;
	global.abSoul -= global.abSoulMax;
	VSLS_Set("abPointMax", global.abPointMax);
	VSLS_Set("abPoint", global.abPoint);
	VSLS_Set("abSoul", global.abSoul);
	VSLS_File_Save("saveFile");
	sc_set_abSoulMax();
}

//if ((isTalk < 4 || isTalk > 7) && !isCt ) alarm[7] = 1;
alarm[0] = 1;
