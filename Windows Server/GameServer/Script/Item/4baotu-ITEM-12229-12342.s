	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:4baotu-ITEM-12229~12342.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 12229 )
		$item2 = GetPlayerInfo( -1, "item", 12340 )
		$item3 = GetPlayerInfo( -1, "item", 12341 )
		$item4 = GetPlayerInfo( -1, "item", 12342 )
		
		if $item1 < 1
			BC( "screen", "player", -1, "You need other parts of the treasure map." )
			return
		endif
		if $item2 < 1
			BC( "screen", "player", -1, "You need other parts of the treasure map." )
			return
		endif
		if $item3 < 1
			BC( "screen", "player", -1, "You need other parts of the treasure map." )
			return
		endif
		if $item4 < 1
			BC( "screen", "player", -1, "You need other parts of the treasure map." )
			return
		endif
		
		$Sub1 = SubPlayerInfo( -1, "item", 12229, 1 )
		$Sub2 = SubPlayerInfo( -1, "item", 12340, 1 )
		$Sub3 = SubPlayerInfo( -1, "item", 12341, 1 )
		$Sub4 = SubPlayerInfo( -1, "item", 12342, 1 )
		if $Sub1 != 0
			return
		endif
		if $Sub2 != 0
			return
		endif
		if $Sub3 != 0
			return
		endif
		if $Sub4 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 12343, 1 )
		return
	}