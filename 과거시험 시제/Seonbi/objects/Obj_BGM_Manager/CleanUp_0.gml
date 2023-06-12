/// @desc 브금 재생 종료하기

if (global.SM_BGM_SOUND != SM_BGM_SOUND) {
	audio_stop_sound( global.SM_BGM );
	global.SM_BGM = noone;
	global.SM_BGM_SOUND = noone;
}