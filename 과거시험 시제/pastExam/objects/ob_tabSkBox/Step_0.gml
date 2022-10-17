/// @description Insert description here
// You can write your code in this editor
switch (skNum) {
case 1:	skValue = global.sk1;	break;
case 2:	skValue = global.sk2;	break;
case 3:	skValue = global.sk3;	break;
}
skSprite = skUi[skValue];
image_index = global.skMp[skValue] / 100;

if (tabIndex == (skNum-1)) {
	ob_tabSkInfo.sprite_index = skInfo[skValue];
	ob_tabSelectImage.sprite_index = skSprite;
	
	if (sc_getKey(global.btInter, global.gpInter, 0)) {
		if (ob_tabControl.skState == 0) {
			ob_tabControl.skState = skNum;
		}
		else if (ob_tabControl.skState == skNum) {
			ob_tabControl.skState = 0;
		}
		else {
			ob_tabControl.skState2 = other.skNum;
		}

	}
}

