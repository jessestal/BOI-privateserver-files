  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/01/22
	//		???
	//		TaskName:54287-DengMi-N.s
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
		$HorN = HaveTarot( -1 , 2546 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You already have this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54287 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 2546 )
			endif
		endif
		
		
		
	}