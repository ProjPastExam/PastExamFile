// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemSprite(){
{
itemSp = array_create(global.itemMax);
itemSp[0] = sp_Item_sin;
itemSp[1] = sp_Item_kick;
itemSp[2] = sp_Item_02;
itemSp[3] = sp_Item_jump;
itemSp[4] = sp_Item_jump;
}

{
itemIn = array_create(global.itemMax);
itemIn[0] = sp_ItemInfo_sin;
itemIn[1] = sp_ItemInfo_kick;
itemIn[2] = sp_ItemInfo_02;
itemIn[3] = sp_ItemInfo_jump;
itemIn[4] = sp_ItemInfo_04;
}
}