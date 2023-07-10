/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var state = ob_roomControl.talkCnt;
//if (state == 8) x = x - 36;



switch (state) {
	
case 10:

	if (active) {
		active = false;
		sprite_index = sp_dbCs2Seon1;
		image_index = 0;
	}
	
	break;
	
case 11:

	if (!active) {
		active = true;
		sprite_index = sp_dbCs2Seon2;
		image_index = 0;
	}
	break;

case 14:

	if (active) {
		active = false;
		sprite_index = sp_dbCs2Seon3;
		image_index = 0;
	}
	
	break;
	
case 15:

	if (!active) {
		active = true;
		sprite_index = sp_dbCs2Seon4;
		image_index = 0;
	}
	break;
}
	


