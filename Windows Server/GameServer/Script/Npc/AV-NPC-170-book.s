	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-170-book.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12558 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Memory Fragment." )
			return
		endif
		
		$PlayerVar = GetPlayerVar( -1, 3702 )
		if $PlayerVar != 0
			BC( "dialogbox", "player", -1, "You have already read Code of Darkness." )
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 12558, 1 )
		if $SubItem1 != 0
			return
		endif
		
		$Random = RandomNumber( 1, 3 )
		if $Random == 1
			SetPlayerVar( -1, 3702, 123 )
			BC( "dialogbox", "player", -1, "In Code of Darkness you see three words:\nRed Yellow Blue" )
			return
		endif
		if $Random == 2
			SetPlayerVar( -1, 3702, 213 )
			BC( "dialogbox", "player", -1, "In Code of Darkness you see three words:\nYellow Red Blue" )
			return
		endif
		if $Random == 3
			SetPlayerVar( -1, 3702, 321 )
			BC( "dialogbox", "player", -1, "In Code of Darkness you see three words:\nBlue Yellow Red" )
			return
		endif
		
	}