//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-16
	//		Author:???
	//		TaskName:?????-??(?)
	//		TaskID:54273
	//
	//****************************************
	function OnUseItem(){
			$HorN = HaveTarot( -1 , 12518 )
		if $HorN == 1
			BC( "screen", "player", -1 , "You have already received this Fate Card!")
			return
		endif
		if $HorN == 0
			$delor = SubPlayerInfo( -1 , "item", 54273 , 1 )
			if $delor == 0
				AddTarotCard( -1 , 12518 )
				BC("screen","player",-1,"Congratulations! Acquire the Jack-o'-Lantern Card (Silver)!")
			endif
		endif
		
		
		

	}