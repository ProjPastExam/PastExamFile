function sc_obPhysics() {
	//오브젝트 공용 물리효과 스크립트
	//타일충돌, 중력

	//중력, 최대 중력속도 선언
	var grav	= 0.6;
	var gravMax	= 16;

	//타일 충돌 감지를 위한 충돌 감지 변수 선언
	var tileId	= layer_tilemap_get_id("Tile_Collision");
	var bottom1	= tilemap_get_at_pixel(tileId, x, bbox_bottom);
	var bottom2	= tilemap_get_at_pixel(tileId, x, bbox_bottom - 16 );
	var top		= tilemap_get_at_pixel(tileId, x, bbox_top);
	var left1	= tilemap_get_at_pixel(tileId, bbox_left, bbox_bottom - 16 );
	var left2	= tilemap_get_at_pixel(tileId, bbox_left, bbox_top + 16 );
	var right1	= tilemap_get_at_pixel(tileId, bbox_right, bbox_bottom - 16 );
	var right2	= tilemap_get_at_pixel(tileId, bbox_right, bbox_top + 16 );
	var middle	= tilemap_get_at_pixel(tileId, x, y );

	//오브젝트와 바닥 충돌
	if ( ( bottom1 == 2 && bottom2 != 2 ) || bottom1 == 3 ) isJump = false;
	else isJump = true;

	if ( !isJump && ySpeed > 0 ) {
		ySpeed = 0;
		if ( bbox_bottom % 64 > 0 ) y -= bbox_bottom % 64;
	}

	//오브젝트와 천장 충돌
	if ( top = 3 ) { if ( ySpeed < 0 ) ySpeed = 5; }

	//중력 작용, 오브젝트의 추락
	//if ( ySpeed > gravMax ) ySpeed = gravMax;
	y = y + ySpeed;
	ySpeed += grav;

	//3단계 블록과의 좌우 충돌
	if ( ( left1 == 3 || left2 == 3) )		{ 
		if ( xSpeed < 0 ) xSpeed = 0;
		if (middle == 3) x += 5;
	}
	if ( ( right1 == 3 || right2 == 3 ) )	{ 
		if ( xSpeed > 0 ) xSpeed = 0; 
		if (middle == 3 ) x -= 5;
	}
	if ( ( right1 == 3 || right2 == 3 ) && ( left1 == 3 || left2 == 3)) 
	{
		if (x < 100)
		{
			x += 32;
		}
		else if (x > room_width - 100)
		{
			x -= 32;
		}
		else
		{
			var left3	= tilemap_get_at_pixel(tileId, bbox_left-32, (bbox_top+bbox_bottom)/2 );
			var right3	= tilemap_get_at_pixel(tileId, bbox_right+32, (bbox_top+bbox_bottom)/2 );
			
			if (right3 == 3) {
				x -= 32;
			}
			else if (left3 == 3) {
				x += 32;
			}
		}
	}
	
	
	if (instance_exists(ob_roomControl) && ob_roomControl.cmMode == 1) {
		var i = uc_get_x();
		var j = uc_get_view_width()/2 - 50;
		if (x > i+j && xSpeed > 0) xSpeed = 0;
		if (x < i-j && xSpeed < 0) xSpeed = 0;
	}
	
	//실제 좌표 이동
	x = x + xSpeed;


}
