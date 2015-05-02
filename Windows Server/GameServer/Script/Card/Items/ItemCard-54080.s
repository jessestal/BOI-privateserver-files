  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54080
	//		TaskID:???????-????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full, you can't use this Fatecharm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54080 , 1 )
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
				$rcard = RandomNumber(1,24)
				if $rcard == 1   
					$cardid = 10230
				endif
				if $rcard == 2   
					$cardid = 10231
				endif
				if $rcard == 3   
					$cardid = 10232
				endif
				if $rcard == 4   
					$cardid = 10233
				endif
				if $rcard == 5   
					$cardid = 10234
				endif
				if $rcard == 6   
					$cardid = 10235
				endif
				if $rcard == 7   
					$cardid = 10236
				endif
				if $rcard == 8   
					$cardid = 10237
				endif
				if $rcard == 9   
					$cardid = 10238
				endif
				if $rcard == 10  
					$cardid = 10239
				endif
				if $rcard == 11  
					$cardid = 10240
				endif
				if $rcard == 12  
					$cardid = 10241
				endif
				if $rcard == 13  
					$cardid = 10220
				endif
				if $rcard == 14  
					$cardid = 10221
				endif
				if $rcard == 15  
					$cardid = 10222
				endif
				if $rcard == 16  
					$cardid = 10223
				endif
				if $rcard == 17  
					$cardid = 10224
				endif
				if $rcard == 18  
					$cardid = 10225
				endif
				if $rcard == 19  
					$cardid = 10226
				endif
				if $rcard == 20  
					$cardid = 10227
				endif
				if $rcard == 21  
					$cardid = 10110
				endif
				if $rcard == 22  
					$cardid = 10111
				endif
				if $rcard == 23  
					$cardid = 10112
				endif
				if $rcard == 24  
					$cardid = 10113
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