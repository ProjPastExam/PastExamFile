/// @description Insert description here
// You can write your code in this editor

printText = "";
state = 0;
sc_dialogueDataLoad();

printText = sc_csvToString(textFile, csvVer + global.lan, imageNum+1);

