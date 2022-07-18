// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_keySet(){
	keySet = 10;
	
	if (keyboard_check_pressed(ord("A")))		{keySet = ord("A");}
	else if (keyboard_check_pressed(ord("B")))	{keySet = ord("B");}
	else if (keyboard_check_pressed(ord("C")))	{keySet = ord("C");}
	else if (keyboard_check_pressed(ord("D")))	{keySet = ord("D");}
	else if (keyboard_check_pressed(ord("E")))	{keySet = ord("E");}
	else if (keyboard_check_pressed(ord("F")))	{keySet = ord("F");}
	else if (keyboard_check_pressed(ord("G")))	{keySet = ord("G");}
	else if (keyboard_check_pressed(ord("H")))	{keySet = ord("H");}
	else if (keyboard_check_pressed(ord("I")))	{keySet = ord("I");}
	else if (keyboard_check_pressed(ord("J")))	{keySet = ord("J");}
	else if (keyboard_check_pressed(ord("K")))	{keySet = ord("K");}
	else if (keyboard_check_pressed(ord("L")))	{keySet = ord("L");}
	else if (keyboard_check_pressed(ord("M")))	{keySet = ord("M");}
	else if (keyboard_check_pressed(ord("N")))	{keySet = ord("N");}
	else if (keyboard_check_pressed(ord("O")))	{keySet = ord("O");}
	else if (keyboard_check_pressed(ord("P")))	{keySet = ord("P");}
	else if (keyboard_check_pressed(ord("Q")))	{keySet = ord("Q");}
	else if (keyboard_check_pressed(ord("R")))	{keySet = ord("R");}
	else if (keyboard_check_pressed(ord("S")))	{keySet = ord("S");}
	else if (keyboard_check_pressed(ord("T")))	{keySet = ord("T");}
	else if (keyboard_check_pressed(ord("U")))	{keySet = ord("U");}
	else if (keyboard_check_pressed(ord("V")))	{keySet = ord("V");}
	else if (keyboard_check_pressed(ord("W")))	{keySet = ord("W");}
	else if (keyboard_check_pressed(ord("X")))	{keySet = ord("X");}
	else if (keyboard_check_pressed(ord("Y")))	{keySet = ord("Y");}
	else if (keyboard_check_pressed(ord("Z")))	{keySet = ord("Z");}
	else if (keyboard_check_pressed(ord("0")))	{keySet = ord("0");}
	else if (keyboard_check_pressed(ord("1")))	{keySet = ord("1");}
	else if (keyboard_check_pressed(ord("2")))	{keySet = ord("2");}
	else if (keyboard_check_pressed(ord("3")))	{keySet = ord("3");}
	else if (keyboard_check_pressed(ord("4")))	{keySet = ord("4");}
	else if (keyboard_check_pressed(ord("5")))	{keySet = ord("5");}
	else if (keyboard_check_pressed(ord("6")))	{keySet = ord("6");}
	else if (keyboard_check_pressed(ord("7")))	{keySet = ord("7");}
	else if (keyboard_check_pressed(ord("8")))	{keySet = ord("8");}
	else if (keyboard_check_pressed(ord("9")))	{keySet = ord("9");}
	else if (keyboard_check_pressed(vk_escape))	{keySet = vk_escape;}
	else if (keyboard_check_pressed(vk_space))	{keySet = vk_space;}
	else if (keyboard_check_pressed(vk_tab))	{keySet = vk_tab;}
	else if (keyboard_check_pressed(vk_shift))	{keySet = vk_shift;}
	//else if (keyboard_check_pressed(vk_lshift))	{keySet = vk_lshift;}
	else if (keyboard_check_pressed(vk_left))	{keySet = vk_left;}
	else if (keyboard_check_pressed(vk_right))	{keySet = vk_right;}
	else if (keyboard_check_pressed(vk_up))		{keySet = vk_up;}
	else if (keyboard_check_pressed(vk_down))	{keySet = vk_down;}
	else if (keyboard_check_pressed(vk_alt))	{keySet = vk_alt;}
	else if (keyboard_check_pressed(vk_lalt))	{keySet = vk_lalt;}
	else if (keyboard_check_pressed(vk_control))	{keySet = vk_control;}
	
	isAgain = true;
	with (ob_keySet) {
		if (selfIndex == other.keySet && keyIndex != other.keyIndex) {
			other.isAgain = false;
			uc_shake(5, 0.1);
			alarm[2] = 1;
		}
	}
	
	
	if (keySet != 10 && isAgain) {
		state = 0;
		switch (keyIndex) {
		case "btAtk":
			global.btAtk = keySet;
			VSLS_Set("btAtk", keySet);
			break;
			
		case "btDash":
			global.btDash = keySet;
			VSLS_Set("btDash", keySet);
			break;
			
		case "btJump":
			global.btJump = keySet;
			VSLS_Set("btJump", keySet);
			break;
		
		case "btSk1":
			global.btSk1 = keySet;
			VSLS_Set("btSk1", keySet);
			break;
		
		case "btSk2":
			global.btSk2 = keySet;
			VSLS_Set("btSk2", keySet);
			break;
		
		case "btSk3":
			global.btSk3 = keySet;
			VSLS_Set("btSk3", keySet);
			break;
			
		case "btUp":
			global.btUp = keySet;
			VSLS_Set("btUp", keySet);
			break;
		
		case "btDown":
			global.btDown = keySet;
			VSLS_Set("btDown", keySet);
			break;
		
		case "btLeft":
			global.btLeft = keySet;
			VSLS_Set("btLeft", keySet);
			break;
		
		case "btRight":
			global.btRight = keySet;
			VSLS_Set("btRight", keySet);
			break;
			
		case "btTap":
			global.btTap = keySet;
			VSLS_Set("btTap", keySet);
			break;
		
		case "btEsc":
			global.btEsc = keySet;
			VSLS_Set("btEsc", keySet);
			break;
		
		case "btInter":
			global.btInter = keySet;
			VSLS_Set("btInter", keySet);
			break;
		}
		VSLS_File_Save("saveFile");
		selfIndex = keySet;
		sprite_index = sc_keySprite(selfIndex);

	}
}