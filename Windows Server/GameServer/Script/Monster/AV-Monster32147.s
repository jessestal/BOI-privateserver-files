   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/19
	//		Author:???
	//		TaskName:AV-Monster32147.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		$ServerVar = GetServerVar( 92 )
		$ServerVar = $ServerVar + 1
		SetServerVar( 92, $ServerVar )
		
		$ServerVar = GetServerVar( 92 )
		if $ServerVar >= 20
			AddNPC( 154 )
			BC( "screen", "player", -1, "The portal is open now." )
			return
		endif
	}
		