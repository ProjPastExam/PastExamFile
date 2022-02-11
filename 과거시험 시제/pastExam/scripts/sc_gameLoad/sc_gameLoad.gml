// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_gameLoad(){
	global.version = 2;
	VSLS_File_Load("saveFile")
	var isOld = false;
	if (VSLS_Get("version") == undefined)			isOld = true;
	else if (VSLS_Get("version") != global.version)	isOld = true;
	
	if (isOld) {
		VSLS_Set("version", global.version);
		
		//VSLS_Set("vol", 50);
		//VSLS_Set("volBgm", 50);
		
		VSLS_Set("itemNum", 3);
		/*
		VSLS_Set("atkDmg", 16);
		VSLS_Set("atkPene", 0);
		VSLS_Set("atkShock", 150);
		VSLS_Set("atkMana", 20);
		VSLS_Set("atkCt", 100);
		VSLS_Set("atkCtMag", 1.5);
		
		VSLS_Set("kickDmg", 5);	
		VSLS_Set("kickPene", 0);
		VSLS_Set("kickShock", 210);
		VSLS_Set("kickMana", 50);
		VSLS_Set("kickCt", 100);
		VSLS_Set("kickCtMag", 1.5);
		
		VSLS_Set("fireDmg", 20);
		VSLS_Set("firePene", 0);
		VSLS_Set("fireShock", 200);
		VSLS_Set("fireMana", 50);
		VSLS_Set("fireCt", 100);
		VSLS_Set("fireCtMag", 1.5);
		*/
		/*
		VSLS_Set("btLeft", vk_left);
		VSLS_Set("btRight", vk_right);
		VSLS_Set("btUp", vk_up);
		VSLS_Set("btDown", vk_down);
		VSLS_Set("btAtk", ord("X"));
		VSLS_Set("btDash", ord("Z"));
		VSLS_Set("btJump", ord("C"));
		VSLS_Set("btSk1", ord("A"));
		VSLS_Set("btSk2", ord("S"));
		VSLS_Set("btSk3", ord("D"));
		VSLS_Set("btInter", ord("F"));
		VSLS_Set("btEsc", vk_escape);
		VSLS_Set("btTap", vk_tab);
		
		VSLS_Set("language", "korean");
		*/
	}
	
	{
		
	if (VSLS_Get("vol") == undefined)		VSLS_Set("vol", 50);
	if (VSLS_Get("volBgm") == undefined)	VSLS_Set("volBgm", 50);
	/*
	if (VSLS_Get("itemNum" == undefined))	VSLS_Set("itemNum", 3);

	if (VSLS_Get("atkDmg" == undefined))	VSLS_Set("atkDmg", 16);
	if (VSLS_Get("atkPene" == undefined))	VSLS_Set("atkPene", 0);
	if (VSLS_Get("atkShock" == undefined))	VSLS_Set("atkShock", 150);
	if (VSLS_Get("atkMana" == undefined))	VSLS_Set("atkMana", 20);

	if (VSLS_Get("kickDmg" == undefined))	VSLS_Set("kickDmg", 5);	
	if (VSLS_Get("kickPene" == undefined))	VSLS_Set("kickPene", 0);
	if (VSLS_Get("kickShock" == undefined))	VSLS_Set("kickShock", 210);
	if (VSLS_Get("kickMana" == undefined))	VSLS_Set("kickMana", 50);

	if (VSLS_Get("fireDmg" == undefined))	VSLS_Set("fireDmg", 20);
	if (VSLS_Get("firePene" == undefined))	VSLS_Set("firePene", 0);
	if (VSLS_Get("fireShock" == undefined))	VSLS_Set("fireShock", 200);
	if (VSLS_Get("fireMana" == undefined))	VSLS_Set("fireMana", 0);
	*/
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
		
	//if (VSLS_Get("language" == undefined))	VSLS_Set("language", "korean");
	}
	
	VSLS_File_Save("saveFile");
}