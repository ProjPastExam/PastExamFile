// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_itemData(){
	
	//화살 속성 소지품
	
	//여우의 활
	global.itemData[1]	= new itemStruct ( 1, sp_Item_01, sp_ItemInfo_01, 0,
		function(grade) { other.item2 = grade;	other.item2Index1 = 0;	other.item2Index2 = global.mp;	other.item2Index3 = 0; })
	
	//효시
	global.itemData[2]	= new itemStruct ( 2, sp_Item_02, sp_ItemInfo_02, 0,
		function(grade) { other.item7 = grade; })
		
	//편전
	global.itemData[3]	= new itemStruct ( 3, sp_Item_03, sp_ItemInfo_03, 0,
		function(grade) { global.item9 = grade; })
		
	//유엽전
	global.itemData[4]	= new itemStruct ( 4, sp_Item_04, sp_ItemInfo_04, 0,
		function(grade) { global.aItem4 = grade; })
	
	//대우전
	global.itemData[5]	= new itemStruct ( 5, sp_Item_05, sp_ItemInfo_05, 0,
		function(grade) { global.aItem5 = grade; })
		
	//착전
	global.itemData[6]	= new itemStruct ( 6, sp_Item_06, sp_ItemInfo_06, 0,
		function(grade) { global.aItem6 = grade; })
		
	//교자궁
	global.itemData[7]	= new itemStruct ( 7, sp_Item_07, sp_ItemInfo_07, 0,
		function(grade) { other.aItem7 = grade;	other.aItem7Index = 0;	})
		
		
	//충격 속성 소지품
		
	//수화자
	global.itemData[21]	= new itemStruct ( 21, sp_Item_21, sp_ItemInfo_21, 1,
		function(grade) { other.isFront = grade; })
		
	//죽창
	global.itemData[22]	= new itemStruct ( 22, sp_Item_22, sp_ItemInfo_22, 1,
		function(grade) { global.item4 = grade; })
		
	//은장도
	global.itemData[23]	= new itemStruct ( 23, sp_Item_23, sp_ItemInfo_23, 1,
		function(grade) { global.item12 = grade; })
		
	//나막신
	global.itemData[24]	= new itemStruct ( 24, sp_Item_24, sp_ItemInfo_24, 1,
		function(grade) { global.item24 = grade; })
		
		
	//화약 속성 소지품
	
	//신기전
	global.itemData[41]	= new itemStruct ( 41, sp_Item_41, sp_ItemInfo_41, 2,
		function(grade) { other.isSin = grade; })
	
	//염초
	global.itemData[42]	= new itemStruct ( 42, sp_Item_42, sp_ItemInfo_42, 2,
		function(grade) { global.item6 = grade; })
	
	//불화살
	global.itemData[43]	= new itemStruct ( 43, sp_Item_43, sp_ItemInfo_43, 2,
		function(grade) { global.item11 = grade; })
		
	//
	global.itemData[44]	= new itemStruct ( 44, sp_Item_44, sp_ItemInfo_44, 2,
		function(grade) { global.item44 = grade; })

	
	//중립 속성 소지품
	
	//깃털 장식
	global.itemData[61]	= new itemStruct ( 61, sp_Item_61, sp_ItemInfo_61, 3,
		function(grade) { global.item3 = grade; })
		
	//머리띠
	global.itemData[62]	= new itemStruct ( 62, sp_Item_62, sp_ItemInfo_62, 3,
		function(grade) { global.item5 = grade; })

	//두정갑
	global.itemData[63]	= new itemStruct ( 63, sp_Item_63, sp_ItemInfo_63, 3,
		function(grade) { global.item8 = grade;	global.item8Index = 80-(global.item8*10); })
		
	//두석린갑, 피격시 모션끊김 없고 무적시간 증가
	global.itemData[64]	= new itemStruct ( 64, sp_Item_64, sp_ItemInfo_64, 3,
		function(grade) { global.item13 = grade; })
		
	//창포검, 치명타 확률 2배 및 연타수치 공격증가 제거
	global.itemData[65]	= new itemStruct ( 65, sp_Item_65, sp_ItemInfo_65, 3,
		function(grade) { global.item10 = grade; })
		
	//띠돈
	global.itemData[66]	= new itemStruct ( 66, sp_Item_66, sp_ItemInfo_66, 3,
		function(grade) { global.item66 = grade; })
		
	//광다회
	global.itemData[67]	= new itemStruct ( 67, sp_Item_67, sp_ItemInfo_67, 3,
		function(grade) { global.item67 = grade; })
		
	//망나니칼
	global.itemData[68]	= new itemStruct ( 68, sp_Item_68, sp_ItemInfo_68, 3,
		function(grade) { global.item68 = grade; })
		
	//천리경
	global.itemData[69]	= new itemStruct ( 69, sp_Item_69, sp_ItemInfo_69, 3,
		function(grade) { global.item69 = grade; })
	
}