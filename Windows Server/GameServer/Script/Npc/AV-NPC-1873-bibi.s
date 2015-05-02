	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/15
	//		Author:???
	//		TaskName:AV-NPC-1873-bibi.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12486 )
		$Item2 = GetPlayerInfo( -1, "item", 12575 )
		$Item3 = GetPlayerInfo( -1, "item", 12576 )
		$Item4 = GetPlayerInfo( -1, "item", 12577 )
		$Item5 = GetPlayerInfo( -1, "item", 12578 )
		$Item6 = GetPlayerInfo( -1, "item", 12579 )
		$Item7 = GetPlayerInfo( -1, "item", 12580 )
		$Item8 = GetPlayerInfo( -1, "item", 12581 )
		if $Item1 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		if $Item2 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		if $Item3 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		if $Item4 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		if $Item5 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		if $Item6 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		if $Item7 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		if $Item8 > 0
			BC( "dialogbox", "player", -1, "Don't you have one already? Quick, find the key! That can last only 5 minutes!" )
			return
		endif
		
		$NullItem = GetPlayerInfo( -1, "nullitem", 0 )
		if $NullItem < 1
			BC( "dialogbox", "player", -1, "It's already full." )
			return
		endif
		
		$Money = GetPlayerInfo( -1, "money" )
		if $Money < 5000
			BC( "dialogbox", "player", -1, "Must be kidding... He doesn't even have 5000 coins." )
			return
		endif
		
		$SubMoney = SubPlayerInfo( -1, "money", 5000 )
		if $SubMoney != 0
			return
		endif
		
		$Random = RandomNumber( 1, 8 )
		if $Random == 1
			AddPlayerInfo( -1, "item", 12486, 1 )
		endif
		if $Random == 2
			AddPlayerInfo( -1, "item", 12486, 1 )
		endif
		if $Random == 3
			AddPlayerInfo( -1, "item", 12576, 1 )
		endif
		if $Random == 4
			AddPlayerInfo( -1, "item", 12577, 1 )
		endif
		if $Random == 5
			AddPlayerInfo( -1, "item", 12577, 1 )
		endif
		if $Random == 6
			AddPlayerInfo( -1, "item", 12579, 1 )
		endif
		if $Random == 7
			AddPlayerInfo( -1, "item", 12580, 1 )
		endif
		if $Random == 8
			AddPlayerInfo( -1, "item", 12581, 1 )
		endif
		
		
	}