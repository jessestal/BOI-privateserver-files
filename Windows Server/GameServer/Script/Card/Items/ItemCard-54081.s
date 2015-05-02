  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54081
	//		TaskID:???????-????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full, you can't use this Fatecharm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54081 , 1 )
		if $delor == 0
			$rLast	=	GetGlobalVar(346 )
			$rHard1	=	GetGlobalVar(348 )
			$rHard2	=	GetGlobalVar(349 )
			$Limit = 30 + $rLast
			$Limit = $Limit + $rHard1
			$Limit = $Limit + $rHard2
			$rKind	=	GetGlobalVar(347 )
			if $rKind == 0
				$Limit = 33
			endif
			$suiji = RandomNumber(1,$Limit)
			if $suiji > 30
				$cardid = 0
				$rcard = RandomNumber(1,19)
				if $rcard == 1   
					$cardid = 10181
				endif
				if $rcard == 2   
					$cardid = 10182
				endif
				if $rcard == 3   
					$cardid = 10183
				endif
				if $rcard == 4   
					$cardid = 10184
				endif
				if $rcard == 5   
					$cardid = 10185
				endif
				if $rcard == 6   
					$cardid = 10186
				endif
				if $rcard == 7   
					$cardid = 10187
				endif
				if $rcard == 8   
					$cardid = 10188
				endif
				if $rcard == 9   
					$cardid = 10189
				endif
				if $rcard == 10  
					$cardid = 10190
				endif
				if $rcard == 11  
					$cardid = 10191
				endif
				if $rcard == 12  
					$cardid = 10192
				endif
				if $rcard == 13  
					$cardid = 10193
				endif
				if $rcard == 14  
					$cardid = 10194
				endif
				if $rcard == 15  
					$cardid = 10195
				endif
				if $rcard == 16  
					$cardid = 10101
				endif
				if $rcard == 17  
					$cardid = 10102
				endif
				if $rcard == 18  
					$cardid = 10103
				endif
				if $rcard == 19  
					$cardid = 10104
				endif
				$HorN = HaveTarot( -1 , $cardid )
				if $HorN == 1
					AddPlayerInfo( -1 , "item" , 54088 , 1 )
					return
				endif
				if $HorN == 0
					AddTarotCard( -1 , $cardid )
					return
				endif
			endif
			AddPlayerInfo( -1 , "item" , 54088 , 1 )
		endif
	}