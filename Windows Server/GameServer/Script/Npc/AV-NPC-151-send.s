	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-151-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12553 )
		$Item2 = GetPlayerInfo( -1, "item", 12554 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You need one Stone of Curse and one Heart of Shadow." )
			return
		endif
		if $Item2 < 1
			BC( "dialogbox", "player", -1, "You need one Stone of Curse and one Heart of Shadow." )
			return
		endif
		
		FlyToMap( -1, 161, 51, 64 )
		
	}