/// @description Insert description here
// You can write your code in this editor

if ( pause > 0 ) pause--;
//if ( slow > 0 )	slow--;

if ( pause == -2 ) {
	instance_create_depth(x, y, 0, ob_demoMain);
	pause = -1;
}
else if (pause == -9) { pause = 0; }
else if (pause == -20) { pause = -21; }

if (hpProcess > 0) hpProcess--;

//if (slow == 0) room_speed = 60;
//else room_speed = 15;

if ( isTalk == 1 )		{ 
	isGUI = false; isTalk = 2;
	SE_Play(s_talk, global.vol);
	if (instance_exists(ob_player)) ob_player.canMove = -10;
}
else if ( isTalk == 2) {
	if ( keyboard_check_pressed(global.btAtk) ) {
		if (talkCnt < talkNum -1) {
			talkCnt++;
			SE_Play(s_talk, global.vol);
		}
		else { isTalk = 3; talkCnt = 0; talkNum = 0; }
	}
	if ( keyboard_check_pressed(global.btEsc) ) {
		isTalk = 3; talkCnt = 0; talkNum = 0;
	}
	
}
else if ( isTalk == 3 )	{ 
	isGUI = true; isTalk = 0;
	with (ob_player) {canMove = 0;}
	//if (instance_exists(ob_player)) ob_player.canMove = 0;
}
else if ( isTalk == 4 ) {
	isGUI = false;
}
else if ( isTalk == 5) {
	isGUI = false;
	if ( keyboard_check_pressed(global.btAtk) ) {
		talkCnt++;
		ob_csParent.active = true;
	}
}

if ( keyboard_check_pressed(global.btEsc) && global.hp > 0 ) {
	if ( pause == -1 )		pause = 0;
	else if ( isTalk == 0 )	pause = -2;
}

if ( keyboard_check_pressed(global.btTap) && global.hp > 0 ) {
	if ( pause == -21 )		pause = 0;
	else if ( pause == 0 )	pause = -20;
}

//if ((isTalk < 4 || isTalk > 7) && !isCt ) alarm[7] = 1;
alarm[0] = 1;
