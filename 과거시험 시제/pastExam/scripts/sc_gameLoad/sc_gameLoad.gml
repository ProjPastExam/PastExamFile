// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameLoad(){
	//global.version = 2;
	VSLS_File_Load("saveFile")
	/*
	var isOld = false;
	if (VSLS_Get("version") == undefined)			isOld = true;
	else if (VSLS_Get("version") != global.version)	isOld = true;
	
	if (isOld) {
		VSLS_Set("version", global.version);
		VSLS_Set("itemNum", 3);
	}
	*/
	{
	//if (VSLS_Get("money")== undefined)		VSLS_Set("money", 0);
	if (VSLS_Get("fullScreen")== undefined)	VSLS_Set("fullScreen", true);
	}
	
	if (VSLS_Get("clearStage")== undefined)	VSLS_Set("clearStage", -1);
	
	//특성 관련 수치
	{
	if (VSLS_Get("abPointMax")== undefined)		VSLS_Set("abPointMax", 0);
	if (VSLS_Get("abPoint")== undefined)		VSLS_Set("abPoint", 0);
	if (VSLS_Get("abSoul")== undefined)			VSLS_Set("abSoul", 0);
	
	if (VSLS_Get("abAtkDmg")== undefined)		VSLS_Set("abAtkDmg", 0);
	if (VSLS_Get("abAtkMana")== undefined)		VSLS_Set("abAtkMana", 0);
	if (VSLS_Get("abAtkCtDmg")== undefined)		VSLS_Set("abAtkCtDmg", 0);
	if (VSLS_Get("abKickDmg")== undefined)		VSLS_Set("abKickDmg", 0);
	if (VSLS_Get("abKickComb")== undefined)		VSLS_Set("abKickComb", 0);
	if (VSLS_Get("abKickCt")== undefined)		VSLS_Set("abKickCt", 0);
	if (VSLS_Get("abFireDmg")== undefined)		VSLS_Set("abFireDmg", 0);
	if (VSLS_Get("abFireCt")== undefined)		VSLS_Set("abFireCt", 0);
	if (VSLS_Get("abFireCtDmg")== undefined)	VSLS_Set("abFireCtDmg", 0);
	}
	
	{
	if (VSLS_Get("vol") == undefined)		VSLS_Set("vol", 50);
	if (VSLS_Get("volBgm") == undefined)	VSLS_Set("volBgm", 50);
	if (VSLS_Get("btLeft") == undefined)	VSLS_Set("btLeft", vk_left);
	if (VSLS_Get("btRight") == undefined)	VSLS_Set("btRight", vk_right);
	if (VSLS_Get("btUp") == undefined)		VSLS_Set("btUp", vk_up);
	if (VSLS_Get("btDown") == undefined)	VSLS_Set("btDown", vk_down);
	if (VSLS_Get("btAtk") == undefined)		VSLS_Set("btAtk", ord("X"));
	if (VSLS_Get("btDash") == undefined)	VSLS_Set("btDash", ord("Z"));
	if (VSLS_Get("btJump") == undefined)	VSLS_Set("btJump", ord("C"));
	if (VSLS_Get("btSk1") == undefined)		VSLS_Set("btSk1", ord("A"));
	if (VSLS_Get("btSk2") == undefined)		VSLS_Set("btSk2", ord("S"));
	if (VSLS_Get("btSk3") == undefined)		VSLS_Set("btSk3", ord("D"));
	if (VSLS_Get("btInter") == undefined)	VSLS_Set("btInter", ord("F"));
	if (VSLS_Get("btEsc") == undefined)		VSLS_Set("btEsc", vk_escape);
	if (VSLS_Get("btTap") == undefined)		VSLS_Set("btTap", vk_tab);
	
	if (VSLS_Get("UIX") == undefined)		VSLS_Set("UIX", 50);
	if (VSLS_Get("UIY") == undefined)		VSLS_Set("UIY", 20);
	if (VSLS_Get("MapX") == undefined)		VSLS_Set("MapX", 1400);
	if (VSLS_Get("MapY") == undefined)		VSLS_Set("MapY", 30);
	if (VSLS_Get("comX") == undefined)		VSLS_Set("comX", 50);
	if (VSLS_Get("comY") == undefined)		VSLS_Set("comY", 390);
	if (VSLS_Get("hpX") == undefined)		VSLS_Set("hpX", 1700);
	if (VSLS_Get("hpY") == undefined)		VSLS_Set("hpY", 160);
	if (VSLS_Get("moneyX") == undefined)	VSLS_Set("moneyX", 945);
	if (VSLS_Get("moneyY") == undefined)	VSLS_Set("moneyY", 25);
	}
	
	VSLS_File_Save("saveFile");
}