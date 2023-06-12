// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_loadTalk(w, h){
	csv = load_csv("npcTalk.csv");
	return csv[# w, h];
}