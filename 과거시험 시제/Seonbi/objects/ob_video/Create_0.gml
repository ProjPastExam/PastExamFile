/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
BGM_Stop(0);
var openFile = "videoFile\\" + videoName;
video_open(openFile);
sIndex = surface_create(1920, 1080);

videoPlay = true;

alarm[5] = playTime;
alarm[1] = 30;