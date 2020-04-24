/// @description Insert description here
// You can write your code in this editor
xC = 0;

if ( x > ob_player.x ) {
	x = ob_player.x;
	xC = 1;
}
else if ( x < ob_player.x ){
	x = ob_player.x;
	xC = 2;
}
y = ob_player.y;

if ( xC == 0 )	layer_hspeed( "Background", 0 );
if ( xC == 1 )	layer_hspeed( "Background", -1 );
if ( xC == 2 )	layer_hspeed( "Background", 1 );