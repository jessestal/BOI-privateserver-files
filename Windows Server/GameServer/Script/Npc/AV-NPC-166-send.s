	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-166-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
		$Item1 = GetPlayerInfo( -1, "item", 12554 )
		if $Item1 > 0
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12557 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "You need 5 units of Lizard Blood." )
			return
		endif
		
		$count01 = GetPlayerInfo( -1, "nullitem", 0 )
		if $count01 < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12557, 5 )
		if $SubItem1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12554, 1 )
//		FlyToMap( -1, 161, 49, 49 )
		
	}