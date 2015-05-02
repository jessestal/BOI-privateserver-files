	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/15
	//		Author:???
	//		TaskName:AV-NPC-1843-stone1.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ItemID1 = 12478
		$ItemID2 = 12479
		$ItemID3 = 12480
		
		$PlayerVar = GetPlayerVar( -1, 3796 )
		if $PlayerVar == 1
			FlyToMap( -1, 160, 83, 83 )
			return
		endif
		
		$PlayerItem1 = GetPlayerInfo( -1, "item", $ItemID1 )
		$PlayerItem2 = GetPlayerInfo( -1, "item", $ItemID2 )
		$PlayerItem3 = GetPlayerInfo( -1, "item", $ItemID3 )
		if $PlayerItem1 > 0
			if $PlayerItem2 > 0
				if $PlayerItem3 > 0
					$SubItem1 = SubPlayerInfo( -1, "item", $ItemID1, 1 )
					$SubItem2 = SubPlayerInfo( -1, "item", $ItemID2, 1 )
					$SubItem3 = SubPlayerInfo( -1, "item", $ItemID3, 1 )
					if $SubItem1 != 0
						return
					endif
					if $SubItem2 != 0
						return
					endif
					if $SubItem3 != 0
						return
					endif
					FlyToMap( -1, 160, 83, 83 )
					SetPlayerVar( -1, 3796, 1 )
				else
					BC( "dialogbox", "player", -1, "In the three rooms of Opaque Temple, you can acquire Square Flame Stone, Triangle Flame Stone, and Round Flame Stone. With these stones you will be able to activate the teleport device." )
					return	
				endif
			else
				BC( "dialogbox", "player", -1, "In the three rooms of Opaque Temple, you can acquire Square Flame Stone, Triangle Flame Stone, and Round Flame Stone. With these stones you will be able to activate the teleport device." )
				return	
			endif
		else
			BC( "dialogbox", "player", -1, "In the three rooms of Opaque Temple, you can acquire Square Flame Stone, Triangle Flame Stone, and Round Flame Stone. With these stones you will be able to activate the teleport device." )
			return	
		endif
		
	}