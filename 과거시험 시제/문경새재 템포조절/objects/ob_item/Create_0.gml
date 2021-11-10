/// @description Insert description here
// You can write your code in this editor
alarm[1] = 30;
xSpeed = 0;
ySpeed = 0;

{
itemSp = array_create(global.itemMax);
itemSp[0] = sp_Item_sin;
itemSp[1] = sp_Item_kick;
itemSp[2] = sp_Item_jump;
itemSp[3] = sp_Item_jump;
}

sprite_index = itemSp[itemNum];

{
itemIn = array_create(global.itemMax);
itemIn[0] = sp_ItemInfo_sin;
itemIn[1] = sp_ItemInfo_kick;
itemIn[2] = sp_ItemInfo_kick;
itemIn[3] = sp_ItemInfo_jump;
}
//alarm[5] = 10;
alarm[0] = 1;