   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/19
	//		Author:???
	//		TaskName:AV-Monster32140.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$ServerVar = GetServerVar( 90 )
		$ServerVar = $ServerVar + 1
		
		if $ServerVar == 40
			AddNPC( 1866 )
			BC( "screen", "player", -1, "The portal is open now." )
			return
		endif
	}
		