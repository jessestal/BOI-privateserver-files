  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/12/21
	//		???
	//		TaskName:ItemCard-
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
//22543	????(?)
		$HorN = HaveTarot( -1 , 22543 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54283 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 22543 )
			endif
		endif
		
		
	}