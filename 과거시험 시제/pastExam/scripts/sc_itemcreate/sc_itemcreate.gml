// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemData(){
	//신기전 아이템
	global.itemData[0]	= new itemStruct ( 0, sp_Item_sin, sp_ItemInfo_sin, 2,
		function(grade) { other.isSin = 1; })
	
	//전방 3연속 발차기 아이템
	global.itemData[1]	= new itemStruct ( 1, sp_Item_kick, sp_ItemInfo_kick, 1,
		function(grade) { other.isFront = 1; })
	
	//마나소모시 화살 공격 아이템
	global.itemData[2]	= new itemStruct ( 2, sp_Item_02, sp_ItemInfo_02, 0,
		function(grade) { other.item2 = 1;	other.item2Index1 = 0;	other.item2Index2 = global.mp;	other.item2Index3 = 0; })
	
	//공중의 적 공격 시 추가데미지 아이템
	global.itemData[3]	= new itemStruct ( 3, sp_Item_jump, sp_ItemInfo_jump, 3,
		function(grade) { other.itemJump = 1; })
		
	//전방공격 시 죽창 찌르기 아이템
	global.itemData[4]	= new itemStruct ( 4, sp_Item_04, sp_ItemInfo_04, 1,
		function(grade) { other.item4 = true; })
		
	//연타 수치 지속시간 증가
	global.itemData[5]	= new itemStruct ( 5, sp_Item_05, sp_ItemInfo_05, 3,
		function(grade) { global.item5 = 1; })
		
	//화약 스케일업
	global.itemData[6]	= new itemStruct ( 6, sp_Item_06, sp_ItemInfo_06, 2,
		function(grade) { global.item6 = true; })
		
	//효시
	global.itemData[7]	= new itemStruct ( 7, sp_Item_07, sp_ItemInfo_07, 0,
		function(grade) { other.item7 = true; })
		
	//두정갑
	global.itemData[8]	= new itemStruct ( 8, sp_Item_08, sp_ItemInfo_07, 3,
		function(grade) { global.item8 = true; })
}