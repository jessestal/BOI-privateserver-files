  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54079
	//		TaskID:???????-????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full, you can't use this Fatecharm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54079 , 1 )
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
					$cardid = 10131
				endif
				if $rcard == 2   
					$cardid = 10132
				endif
				if $rcard == 3   
					$cardid = 10133
				endif
				if $rcard == 4   
					$cardid = 10134
				endif
				if $rcard == 5   
					$cardid = 10135
				endif
				if $rcard == 6   
					$cardid = 10136
				endif
				if $rcard == 7   
					$cardid = 10137
				endif
				if $rcard == 8   
					$cardid = 10210
				endif
				if $rcard == 9   
					$cardid = 10211
				endif
				if $rcard == 10  
					$cardid = 10212
				endif
				if $rcard == 11  
					$cardid = 10213
				endif
				if $rcard == 12  
					$cardid = 10214
				endif
				if $rcard == 13  
					$cardid = 10215
				endif
				if $rcard == 14  
					$cardid = 10216
				endif
				if $rcard == 15  
					$cardid = 10242
				endif
				if $rcard == 16  
					$cardid = 10243
				endif
				if $rcard == 17  
					$cardid = 10244
				endif
				if $rcard == 18  
					$cardid = 10245
				endif
				if $rcard == 19  
					$cardid = 10246
				endif
				if $rcard == 20  
					$cardid = 10247
				endif
				if $rcard == 21  
					$cardid = 10275
				endif
				if $rcard == 22  
					$cardid = 10276
				endif
				if $rcard == 23  
					$cardid = 10277
				endif
				if $rcard == 24  
					$cardid = 10278
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