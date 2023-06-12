/// @description Insert description here
// You can write your code in this editor
tabIndex = 0;

switch (skNum) {
case 1:	skValue = global.sk1;	break;
case 2:	skValue = global.sk2;	break;
case 3:	skValue = global.sk3;	break;
}
sc_skillUi();
skSprite = skUi[skValue];
image_index = global.skMp[skValue] / 100;
