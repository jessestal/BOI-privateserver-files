  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54108
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Inum = GetPlayerInfo( -1 , "item", 54108 )
		if $Inum < 6
			BC( "screen", "player", -1 , "You don't have enough Silver Misha Fate charms, can't use!")
			return
		endif
		
		$Inull = GetPlayerInfo( -1 , "nullitem", 0 )
		if $Inull < 1
			BC( "screen", "player", -1 , "You don't have enough space in your bag to use that!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54108 , 6 )
		if $delor == 0
			AddPlayerInfo( -1 , "item" , 54099 , 1 )
		endif
		
	}