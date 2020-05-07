
Attacked = true;
delay = 30;

while( Attacked ) {
	delay -= 1;
	if( !delay ) {
		if( mobHP >= ob_player.playerDmg ) { 
			self.mobHP -= ob_player.playerDmg;
			break;
		}
		else if( mobHP < ob_player.playerDmg ) { mobHP = 0; instance_destroy(self); break; }
		
	}
}
delay = 30;
isPeace = false;
Attacked = false;

