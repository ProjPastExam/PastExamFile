// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_csvToString(csv, ver, hor){
	return string_replace_all(csv[# ver, hor], "\\n", "\n");
}