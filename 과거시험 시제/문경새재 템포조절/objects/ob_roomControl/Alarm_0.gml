/// @description Insert description here
// You can write your code in this editor

if ( pause > 0 ) pause--;
if ( slow > 0 )	slow--;
if ( keyboard_check_pressed(vk_escape) && global.hp > 0 && pause >= -2 ) {
	if ( pause == -1 )		pause = 0;
	else if ( isTalk == 0 )	pause = -2;
}
if ( pause == -2 ) {
	instance_create_depth(x, y, 0, ob_demoMain);
	pause = -1;
}
if (pause == -9) { pause = 0; }
if (hpProcess > 0) hpProcess--;

//if (slow == 0) room_speed = 60;
//else room_speed = 15;

if ( isTalk == 1 )		{ 
	isGUI = false; isTalk = 2;
	audio_play_sound(s_talk, 4, false);
	if (instance_exists(ob_player)) ob_player.canMove = -10;
}
else if ( isTalk == 2) {
	if ( keyboard_check_pressed(ord("X")) ) {
		if (talkCnt < talkNum -1) {
			talkCnt++;
			audio_play_sound(s_talk, 4, false);
		}
		else { isTalk = 3; talkCnt = 0; talkNum = 0; }
	}
	if ( keyboard_check_pressed(vk_escape) ) {
		isTalk = 3; talkCnt = 0; talkNum = 0;
	}
	
}
else if ( isTalk == 3 )	{ 
	isGUI = true; isTalk = 0;
	if (instance_exists(ob_player)) ob_player.canMove = 0;
}
else if ( isTalk == 4 ) {
	isGUI = false;
}
else if ( isTalk == 5) {
	isGUI = false;
	if ( keyboard_check_pressed(ord("X")) ) {
		talkCnt++;
	}
}
//if ((isTalk < 4 || isTalk > 7) && !isCt ) alarm[7] = 1;
alarm[0] = 1;
