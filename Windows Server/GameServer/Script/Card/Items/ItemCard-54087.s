  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54087
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full, you can't use this Fatecharm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54087 , 1 )
		if $delor == 0
			$suiji = RandomNumber(1,3)
			if $suiji < 3
				AddPlayerInfo( -1 , "item", 59951 , 1 )
			endif
			if $suiji == 3
				$i = 0
				while $i < 25
					$cardid = 1001 + $i
					$HorN = HaveTarot( -1 , $cardid )
					if $HorN == 0
						AddTarotCard( -1 , $cardid )
						return
					endif
					$i = $i + 1
				endwhile
				AddPlayerInfo( -1 , "item", 59951 , 1 )
			endif
		endif
	}