/// @description Insert description here
// You can write your code in this editor

printText = "";
state = 0;
textFile = load_csv(csvFile);

printText = sc_csvToString(textFile, global.lan, imageNum+1);

