function sc_playerAttack() {
	Attacked = true;
	state = 98;
	var DMG = sc_getPlayer("playerDmg");

	/*if( Attacked ) {
		if( mobHP >= ob_player.playerDmg ) { 
			self.mobHP -= ob_player.playerDmg;
		}
		else if( mobHP < ob_player.playerDmg ) { mobHP = 0; instance_destroy(self); }
	}*/

	if( mobHP >= DMG ) { 
		mobHP -= DMG;
		AttackedCount++;
	}
	else if( mobHP < DMG ) { 
		mobHP = 0; 
		state = 99;
		AttackedCount++;
	}

	if ( mobHP <= 0 ) { state = 99; }

	isPeace = false;
	Attacked = false;
}