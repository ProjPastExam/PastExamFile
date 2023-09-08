// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_steam_update(){
	if (global.isSteam)	
	{
		steam_update();
		if (steam_is_screenshot_requested())
		{
			var _file = "seonbi.png"
			screen_save(_file);
			steam_send_screenshot(_file, 1920, 1080);
		}
	}
}