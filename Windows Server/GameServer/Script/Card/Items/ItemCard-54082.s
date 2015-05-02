  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54082
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 2514 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card! ")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54082 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 2514 )
			endif
		endif
		
	}