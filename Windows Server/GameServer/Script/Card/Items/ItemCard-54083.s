  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54083
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 12514 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You've already received Skuld's Fate Card!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54083 , 1 )
		if $delor != 0
			return
		endif
		
		AddStatus( -1, 7551, 1 )
		
		$dajiang = RandomNumber(0,3000)
		if $dajiang > 0
			return
		endif
		
		AddTarotCard( -1 , 12514 )
		
	}