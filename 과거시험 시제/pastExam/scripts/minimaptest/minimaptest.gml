// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// argument0, 1 : 전체 미니맵 중 현재 맵의 x, y좌표
function mapinit(argument0, argument1) {
	
	// 미니맵
	sprite_x = argument0;
	sprite_y = argument1;
	
	// 미니맵 크기
	w = room_width / 8;
	h = room_height / 8;
	
	// 미니맵 위치
	map_x = 6.5 * h;
	map_y = 0.5 * w;
}

// argument0, 1 : 전체 미니맵 중 현재 맵의 x, y좌표
function sc_drawMiniMap(argument0, argument1) {
	if(!isMinimap) return;
	
	mapinit(argument0, argument1);
	
	// 미니맵 그리기
	draw_sprite_part(maptest, 0, sprite_x, sprite_y, w, h, map_x, map_y);
	
	// 플레이어 위치 트레킹
	//draw_sprite(mapplayer, 0, map_x + ob_player.x / 8, map_y + ob_player.y / 8 )
}