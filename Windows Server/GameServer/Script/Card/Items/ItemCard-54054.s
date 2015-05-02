  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54054
	//		TaskID:???????-?????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full, you can't use this Fatecharm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54054 , 1 )
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
				$rcard = RandomNumber(1,25)
				if $rcard == 1   
					$cardid = 10114
				endif
				if $rcard == 2   
					$cardid = 10115
				endif
				if $rcard == 3   
					$cardid = 10116
				endif
				if $rcard == 4   
					$cardid = 10117
				endif
				if $rcard == 5   
					$cardid = 10118
				endif
				if $rcard == 6   
					$cardid = 10119
				endif
				if $rcard == 7   
					$cardid = 10120
				endif
				if $rcard == 8   
					$cardid = 10121
				endif
				if $rcard == 9   
					$cardid = 10122
				endif
				if $rcard == 10  
					$cardid = 10123
				endif
				if $rcard == 11  
					$cardid = 10124
				endif
				if $rcard == 12  
					$cardid = 10125
				endif
				if $rcard == 13  
					$cardid = 10126
				endif
				if $rcard == 14  
					$cardid = 10127
				endif
				if $rcard == 15  
					$cardid = 10128
				endif
				if $rcard == 16  
					$cardid = 10129
				endif
				if $rcard == 17  
					$cardid = 10130
				endif
				if $rcard == 18  
					$cardid = 10217
				endif
				if $rcard == 19  
					$cardid = 10218
				endif
				if $rcard == 20  
					$cardid = 10219
				endif
				if $rcard == 21  
					$cardid = 10105
				endif
				if $rcard == 22  
					$cardid = 10106
				endif
				if $rcard == 23  
					$cardid = 10107
				endif
				if $rcard == 24  
					$cardid = 10108
				endif
				if $rcard == 25  
					$cardid = 10109
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