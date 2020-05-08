Attacked = true;

/*if( Attacked ) {
	if( mobHP >= ob_player.playerDmg ) { 
		self.mobHP -= ob_player.playerDmg;
	}
	else if( mobHP < ob_player.playerDmg ) { mobHP = 0; instance_destroy(self); }
}*/

if( mobHP >= ob_player.playerDmg ) { 
	self.mobHP -= ob_player.playerDmg;
}
else if( mobHP < ob_player.playerDmg ) { mobHP = 0; instance_destroy(self); }


isPeace = false;
Attacked = false;