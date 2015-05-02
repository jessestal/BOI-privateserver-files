	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-154-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ServerVar = GetServerVar( 11 )
		if $ServerVar >= 20
			BC( "screen", "player", -1, "You may not pass now." )
			return
		endif
		
		FlyToMap( -1, 161, 69, 68 )
		$ServerVar = GetServerVar( 11 )
		$ServerVar = $ServerVar + 1
		SetServerVar( 11, $ServerVar )
		$ServerVar = GetServerVar( 11 )
		if $ServerVar >= 20
			SetServerVar( 11, 0 )
			SetServerVar( 92, 0 )
			DeleteNPC( 154 )
		endif
	}