/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("pause") == 0 ) {
	
	if ( state != -1 ) {
		sc_mobMain();
		
		//이하 몹 개인 코드
		
	}
	else {
		
	}
	sc_obPhysics();
	image_speed = 1;
}
else {
	image_speed = 0;
}
alarm[0] = 1;