// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조

function sc_steam_achievement(_API){
	if (!global.isSteam)				return;
	if (!steam_stats_ready())			return;
	if (steam_get_achievement(_API))	return;
	steam_set_achievement(_API);
}

function sc_steam_stats(_API, _value){
	if (!global.isSteam)				return;
	if (!steam_stats_ready())			return;
	steam_set_stat_int(_API, steam_get_stat_int(_API) + _value);
}

function sc_steam_killCount(){
	if (!global.isSteam)				return;
	if (!steam_stats_ready())			return;
	sc_steam_stats("ST_KILL", 1);
	var _killcount = steam_get_stat_int("ST_KILL");
	if (_killcount >= 100)		sc_steam_achievement("AC_KILL1");
	if (_killcount >= 1000)		sc_steam_achievement("AC_KILL2");
	if (_killcount >= 10000)	sc_steam_achievement("AC_KILL3");
}

function sc_steam_skill(){
	if (!global.isSteam)				return;
	if (!steam_stats_ready())			return;
	
	sc_steam_achievement("AC_SKILL1");
	if (skNum == 173)	sc_steam_achievement("AC_SKILL3");
	
	var skIndex = 0;
	if (global.sk1 != 0)	skIndex++;
	if (global.sk2 != 0)	skIndex++;
	if (global.sk3 != 0)	skIndex++;
	if (skIndex == 3)	sc_steam_achievement("AC_SKILL2");
}

function sc_steam_item(){
	if (!global.isSteam)				return;
	if (!steam_stats_ready())			return;
	
	sc_steam_achievement("AC_ITEM1");
	
	if (global.itemSum == 6)	sc_steam_achievement("AC_ITEM2");
}

function sc_steam_item2(){
	if (!global.isSteam)				return;
	if (!steam_stats_ready())			return;
	
	sc_steam_achievement("AC_ITEM3");
	
	if (global.itemSum == 6)
	{
		var gradeIndex = 0;
		for (var i = 0; i < global.itemSum; i++) 
		{
			if (global.itemGet[i] == NULL)	break;
			if (global.itemGet[i].itemGrade == 3)	gradeIndex++;
		}
		if (gradeIndex == 6)	sc_steam_achievement("AC_ITEM4");
	}
}