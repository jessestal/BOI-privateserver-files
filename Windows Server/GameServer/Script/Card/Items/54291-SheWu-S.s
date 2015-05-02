  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/01/22
	//		???
	//		TaskName:54291-SheWu-S.s
	//		
	//
	//****************************************
	
	
	function OnUseItem(){
		
//2545	????
//2546	????
//2547	????

//12545	????(?)
//12546	????(?)
//12547	????(?)

//22546	????(?)
//22547	????(?)
		$HorN = HaveTarot( -1 , 12547 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54291 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 12547 )
			endif
		endif
		
		
		
	}