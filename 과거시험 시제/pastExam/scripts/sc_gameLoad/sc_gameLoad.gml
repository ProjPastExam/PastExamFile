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
	if (VSLS_Get("reStory")== undefined)	VSLS_Set("reStory", false);
	if (VSLS_Get("level")== undefined)		VSLS_Set("level", 0); 
	}
	
	if (VSLS_Get("clearStage")== undefined)	VSLS_Set("clearStage", -1);
	
	//특성 관련 수치
	{
	if (VSLS_Get("abPointMax")== undefined)		VSLS_Set("abPointMax", 0);
	if (VSLS_Get("abPoint")== undefined)		VSLS_Set("abPoint", 0);
	if (VSLS_Get("abSoul")== undefined)			VSLS_Set("abSoul", 0);
	
	if (VSLS_Get("abAtk0")== undefined)		VSLS_Set("abAtk0", 0);
	if (VSLS_Get("abAtk1")== undefined)		VSLS_Set("abAtk1", 0);
	if (VSLS_Get("abAtk2")== undefined)		VSLS_Set("abAtk2", 0);
	if (VSLS_Get("abKick0")== undefined)	VSLS_Set("abKick0", 0);
	if (VSLS_Get("abKick1")== undefined)	VSLS_Set("abKick1", 0);
	if (VSLS_Get("abKick2")== undefined)	VSLS_Set("abKick2", 0);
	if (VSLS_Get("abFire0")== undefined)	VSLS_Set("abFire0", 0);
	if (VSLS_Get("abFire1")== undefined)	VSLS_Set("abFire1", 0);
	if (VSLS_Get("abFire2")== undefined)	VSLS_Set("abFire2", 0);
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
	
	if (VSLS_Get("gpLeft") == undefined)	VSLS_Set("gpLeft", gp_padl);
	if (VSLS_Get("gpRight") == undefined)	VSLS_Set("gpRight", gp_padr);
	if (VSLS_Get("gpUp") == undefined)		VSLS_Set("gpUp", gp_padu);
	if (VSLS_Get("gpDown") == undefined)	VSLS_Set("gpDown", gp_padd);
	if (VSLS_Get("gpAtk") == undefined)		VSLS_Set("gpAtk", gp_face3);
	if (VSLS_Get("gpDash") == undefined)	VSLS_Set("gpDash", gp_shoulderr);
	if (VSLS_Get("gpJump") == undefined)	VSLS_Set("gpJump", gp_face1);
	if (VSLS_Get("gpSk1") == undefined)		VSLS_Set("gpSk1", gp_shoulderl);
	if (VSLS_Get("gpSk2") == undefined)		VSLS_Set("gpSk2", gp_shoulderlb);
	if (VSLS_Get("gpSk3") == undefined)		VSLS_Set("gpSk3", gp_shoulderrb);
	if (VSLS_Get("gpInter") == undefined)	VSLS_Set("gpInter", gp_face4);
	if (VSLS_Get("gpEsc") == undefined)		VSLS_Set("gpEsc", gp_select);
	if (VSLS_Get("gpTap") == undefined)		VSLS_Set("gpTap", gp_start);
	
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