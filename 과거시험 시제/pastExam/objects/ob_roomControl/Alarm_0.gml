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
	if (keyboard_check_pressed(global.btUp)) {
		if (questionState == 0)	questionState = questionNum-1;
		else					questionState--;
	}
	
	if (keyboard_check_pressed(global.btDown)) {
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
	if ( keyboard_check_pressed(global.btAtk) || keyboard_check_pressed(global.btInter) ) {
		talkCnt++;
		with (ob_csParent) {
			active = true;
		}
		//ob_csParent.active = true;
	}
}



if ( keyboard_check_pressed(global.btTap) && global.hp > 0 && dark == 0 ) {
	sc_gameRoom(r_tab);
}

if ( keyboard_check_pressed(global.btEsc) && global.hp > 0  ) {
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

if (global.abSoulMax <= global.abSoul) {
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
