   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/19
	//		Author:???
	//		TaskName:AV-Monster32139.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$ServerVar = GetServerVar( 90 )
		$ServerVar = $ServerVar + 1
		SetServerVar( 90, $ServerVar )
		
		if $ServerVar == 20
			AddNPC( 1866 )
			BC( "screen", "map", 160, "The portal is open now." )
			return
		endif
	}
		