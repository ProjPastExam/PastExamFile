/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
BGM_Stop(0);
var openFile = "videoFile\\" + videoName;
video_open(openFile);
sIndex = surface_create(1920, 1080);

videoPlay = true;

alarm[5] = playTime;
alarm[1] = 30;

if (global.level == 0)	sc_steam_achievement("AC_CLEAR1");
if (global.level == 1)	sc_steam_achievement("AC_CLEAR2");
if (global.level == 2)	sc_steam_achievement("AC_CLEAR3");
