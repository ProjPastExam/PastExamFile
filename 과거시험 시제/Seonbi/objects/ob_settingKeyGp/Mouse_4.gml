/// @description Insert description here
// You can write your code in this editor
if (global.keyGp == 0) {
	global.keyGp = 1;
	VSLS_Set("keyGp", 1);
	VSLS_File_Save("saveFile");

}
else {
	global.keyGp = 0;
	VSLS_Set("keyGp", 0);
	VSLS_File_Save("saveFile");
}

with(ob_keySet)
{
	alarm[1] = 1;
}
with(ob_buttonPrint)
{
	alarm[1] = 1;
}