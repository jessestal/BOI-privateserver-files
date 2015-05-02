	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-153-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12556 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "You need 5 Darkness Essences." )
			return
		endif
		
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12556, 5 )
		if $SubItem1 != 0
			return
		endif

		FlyToMap( -1, 161, 85, 49 )
	}