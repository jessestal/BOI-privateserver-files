	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/22
	//		Author:???
	//		TaskName:Battle-Item-63549.s
	//		TaskID:2???????
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63549 )		
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
		
		$SetBattle = SetCreditTimes( 200 )
		if $SetBattle != 0
			return
		endif
		
		SubPlayerInfo( -1, "item", 63549, 1 )
		
	}