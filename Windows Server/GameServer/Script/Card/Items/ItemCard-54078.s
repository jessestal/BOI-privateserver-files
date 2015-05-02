  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54078
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Inum = GetPlayerInfo( -1 , "item", 54078 )
		if $Inum < 70
			BC( "screen", "player", -1 , "You don't have enough Soul Shards for that!")
			return
		endif
		
		$HorN = HaveTarot( -1 , 12008 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card! ")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54078 , 70 )
			if $delor == 0
				AddTarotCard( -1 , 12008 )
			endif
		endif
		
	}