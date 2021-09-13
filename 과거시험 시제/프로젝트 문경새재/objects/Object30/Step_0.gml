/// @description Insert description here
// You can write your code in this editor
sc_obPhysics();
if ( process >= 0 ) {
		process++;
		sprite_index = sp_bandit02_atk;
		xSpeed = 0;

		if ( process == 16 ) { 
			var axe = instance_create_layer(x, y, "effect", ob_mobBandit02Atk);
			axe.xSpeed = 12 * dir;
			axe.ySpeed = -20;
		}
		
		
		if ( process < 15 ) { image_index = 0; }
		else if ( process < 20 ) { image_index = 1; }
		else if ( process < 30 ) { image_index = 2; }
		else { alarm[1] = 90;	process = -1; }
}
if (process < 0) sprite_index = sp_bandit02_stand2;