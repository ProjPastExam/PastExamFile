/// @description Insert description here
// You can write your code in this editor
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

state = 0;

sc_keySprite(selfIndex);
