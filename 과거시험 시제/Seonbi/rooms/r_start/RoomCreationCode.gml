sc_itemSet();
room_speed = 60;
global.hp = global.hpMax;
global.mp = 0;

global.sk1 = 0;
global.sk2 = 0;
global.sk3 = 0;

for (var i = 0; i < 12; i++)
{
	global.seonBuff[i] = 0;
}

global.money = 0;

with (ob_player) {
	itemCheck = true;
}

global.checkPoint	= r_start;
global.checkUse		= 0;
global.checkNum		= 0;

//texturegroup_load()