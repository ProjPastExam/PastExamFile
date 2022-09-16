/// @description 투명도 추가
// You can write your code in this editor

//image_alpha = 0.8;
if (global.clearStage < 5) instance_destroy();

var i = 0;
var indexTemp = 0;

for (i = 0; i < 9; i++) {
	indexTemp += global.abIndex[i];
}

global.abPoint = global.abPointMax - indexTemp;
VSLS_SetAndSave("abPoint", global.abPoint, "saveFile");