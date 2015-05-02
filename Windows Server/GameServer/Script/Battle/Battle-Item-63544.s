	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/22
	//		Author:???
	//		TaskName:Battle-Item-63544.s
	//		TaskID:1.2???????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63544 )		
		if $item1 < 1
			return
		endif
		
		$Mapid = GetPlayerInfo( -1, "mapid" )
		if $Mapid != 220
			if $Mapid != 234
				BC( "screen", "player", -1, "Only can be used in Battlefield of Ancient Ruins." )
				return
			endif
		endif
		
		$SetBattle = SetCreditTimes( 120 )
		if $SetBattle != 0
			return
		endif
		
		SubPlayerInfo( -1, "item", 63544, 1 )
		
	}