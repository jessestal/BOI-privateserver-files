  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54050
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$HorN = HaveTarot( -1 , 12003 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card! ")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54050 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 12003 )
			endif
		endif
		
	}