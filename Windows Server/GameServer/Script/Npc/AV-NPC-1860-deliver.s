	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/18
	//		Author:???
	//		TaskName:AV-NPC-1860-deliver.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
	
			$Item = GetPlayerInfo( -1, "item", 12481 )
			if $Item < 5
				BC( "screen", "player", -1, "It costs you 5 Energy Stones each time you use the teleport device." )
				return
			endif
		
			$SubItem = SubPlayerInfo( -1, "item", 12481, 5 )
			if $SubItem != 0
				return
			endif
		
			$Random = RandomNumber( 1, 5 )
			if $Random == 1
				FlyToMap( -1, 160, 32, 50 )
			endif
			if $Random == 2
				FlyToMap( -1, 160, 51, 50 )
			endif
			if $Random == 3
				FlyToMap( -1, 160, 51, 67 )
			endif
			if $Random == 4
				FlyToMap( -1, 160, 51, 86 )
			endif
			if $Random == 5
				FlyToMap( -1, 160, 33, 85 )
				$ServerVar = GetServerVar( 93 )
				if $ServerVar != 1
					AddMonster( 32139, 20, 160, 33, 85, 3 )
					SetServerVar( 93, 1 )
					return
				endif
			endif
				
	}
	
	function OnOption1(){
	
			$Item = GetPlayerInfo( -1, "item", 12481 )
			if $Item < 15
				BC( "screen", "player", -1, "To go to Room "V", you'll need 15 Energy Stones." )
				return
			endif
		
			$SubItem = SubPlayerInfo( -1, "item", 12481, 15 )
			if $SubItem != 0
				return
			endif

			FlyToMap( -1, 160, 32, 54 )
				
	}
	
	function OnOption2(){
	
			$Item = GetPlayerInfo( -1, "item", 12481 )
			if $Item < 15
				BC( "screen", "player", -1, "To go to Room "XIII", you'll need 15 Energy Stones." )
				return
			endif
		
			$SubItem = SubPlayerInfo( -1, "item", 12481, 15 )
			if $SubItem != 0
				return
			endif

			FlyToMap( -1, 160, 32, 82 )
			$ServerVar = GetServerVar( 93 )
			if $ServerVar != 1
				AddMonster( 32139, 20, 160, 33, 85, 3 )
				SetServerVar( 93, 1 )
				return
			endif
				
	}