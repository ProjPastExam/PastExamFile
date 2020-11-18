/// @description Insert description here
// You can write your code in this editor
if ( sc_getRoomValue("slow") == 0 )	{
	alarm[0] = 1;
}
else {
	alarm[0] = 2;
}

if ( sc_getRoomValue("pause") == 0 ) {


	lifeTime--;
}
if (lifeTime == 0) instance_destroy();