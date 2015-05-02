  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		???
	//		TaskName:ItemCard-?
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
//2519
//12519
//22519
		$HorN = HaveTarot( -1 , 22519 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54275 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 22519 )
			endif
		endif
		
		
		
	}