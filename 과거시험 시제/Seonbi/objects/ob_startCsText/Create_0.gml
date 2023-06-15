/// @description Insert description here
// You can write your code in this editor

printText = "";
state = 0;
textFile = load_csv("dialogueData\\opening.csv");

printText = sc_csvToString(textFile, global.lan, imageNum+1);

/*
switch (imageNum) {
case 0:	printText = "전국시대의 일본을 통일한 도요토미 히데요시는 \n1592년에 대대적인 조선 침략을 감행한다.";	break;	
case 1:	printText = "전쟁은 오랬동안 처절하게 이어졌지만, \n결국 많은 이들의 활약으로 조선 팔도를 지켜낼 수 있었다.";	break;	
case 2:	printText = "하지만 긴 전쟁으로 \n백성들의 삶의 터전은 무너져내렸다.";	break;	
case 3:	printText = "나라가 혼란하니 전국에서 도적이 들끓었고, \n탐관오리들은 혼란을 기회삼아 백성들을 수탈했다.";	break;	
case 4:	printText = "이에 조선의 혼란을 바로잡고자";	break;	
case 5:	printText = "활 한 자루에 의지하여";	break;	
case 6:	printText = "한 이름없는 선비가 과거길에 오른다.";	break;	
}

if (global.lan == 1) {
switch (imageNum) {
case 0:	printText = "In 1592, Toyotomi Hideyoshi, who had unified Japan,\nlaunched a large-scale invasion of Joseon, \na country on the Korean peninsula.";	break;	
case 1:	printText = "The war lasted for seven grueling years, but eventually, \nthanks to the heroic efforts of many, \nJoseon was able to repel Japan's invasion";	break;	
case 2:	printText = "However, the long-lasting war caused \nthe foundation of people's livelihoods to crumble.";	break;	
case 3:	printText = "With the country in chaos, bandits sprang up all over the nation \nand corrupt officials took advantage of the confusion \nto exploit the people.";	break;	
case 4:	printText = "To address the turmoil in Joseon,";	break;	
case 5:	printText = "Relying on just one bow,";	break;	
case 6:	printText = "The unnamed Sunbi sets out on a journey to Hanyang, \nCapital of Joseon";	break;	
}
}
*/