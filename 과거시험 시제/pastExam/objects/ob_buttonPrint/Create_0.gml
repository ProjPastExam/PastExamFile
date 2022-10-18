/// @description Insert description here
// You can write your code in this editor
if (global.gamepadSlot == -1) {
	switch (keyIndex) {
		case "btUp":	selfIndex = global.btUp;	break;
		case "btDown":	selfIndex = global.btDown;	break;
		case "btLeft":	selfIndex = global.btLeft;	break;
		case "btRight":	selfIndex = global.btRight;	break;
		case "btAtk":	selfIndex = global.btAtk;	break;
		case "btDash":	selfIndex = global.btDash;	break;
		case "btJump":	selfIndex = global.btJump;	break;
		case "btEsc":	selfIndex = global.btEsc;	break;
		case "btTap":	selfIndex = global.btTap;	break;
		case "btSk1":	selfIndex = global.btSk1;	break;
		case "btSk2":	selfIndex = global.btSk2;	break;
		case "btSk3":	selfIndex = global.btSk3;	break;
		case "btInter":	selfIndex = global.btInter;	break;
	}
	sprite_index = sc_keySprite(selfIndex);
}
else {
	switch (keyIndex) {
		case "btUp":	selfIndex = global.gpUp;	break;
		case "btDown":	selfIndex = global.gpDown;	break;
		case "btLeft":	selfIndex = global.gpLeft;	break;
		case "btRight":	selfIndex = global.gpRight;	break;
		case "btAtk":	selfIndex = global.gpAtk;	break;
		case "btDash":	selfIndex = global.gpDash;	break;
		case "btJump":	selfIndex = global.gpJump;	break;
		case "btEsc":	selfIndex = global.gpEsc;	break;
		case "btTap":	selfIndex = global.gpTap;	break;
		case "btSk1":	selfIndex = global.gpSk1;	break;
		case "btSk2":	selfIndex = global.gpSk2;	break;
		case "btSk3":	selfIndex = global.gpSk3;	break;
		case "btInter":	selfIndex = global.gpInter;	break;
	}
	if (gpIndex == "inter") selfIndex = gp_face4;
	else if (gpIndex == "l") selfIndex = gp_shoulderl;
	else if (gpIndex == "r") selfIndex = gp_shoulderr;
	sprite_index = sc_gpSprite(selfIndex);
}




alarm[1] = 120;