  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54084
	//		TaskID:???????-????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full, you can't use this Fatecharm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54084 , 1 )
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
				$rcard = RandomNumber(1,26)
				if $rcard == 1   
					$cardid = 10145
				endif
				if $rcard == 2   
					$cardid = 10146
				endif
				if $rcard == 3   
					$cardid = 10147
				endif
				if $rcard == 4   
					$cardid = 10148
				endif
				if $rcard == 5   
					$cardid = 10149
				endif
				if $rcard == 6   
					$cardid = 10150
				endif
				if $rcard == 7   
					$cardid = 10151
				endif
				if $rcard == 8   
					$cardid = 10152
				endif
				if $rcard == 9   
					$cardid = 10153
				endif
				if $rcard == 10  
					$cardid = 10154
				endif
				if $rcard == 11  
					$cardid = 10155
				endif
				if $rcard == 12  
					$cardid = 10156
				endif
				if $rcard == 13  
					$cardid = 10157
				endif
				if $rcard == 14  
					$cardid = 10196
				endif
				if $rcard == 15  
					$cardid = 10197
				endif
				if $rcard == 16  
					$cardid = 10198
				endif
				if $rcard == 17  
					$cardid = 10199
				endif
				if $rcard == 18  
					$cardid = 10200
				endif
				if $rcard == 19  
					$cardid = 10201
				endif
				if $rcard == 20  
					$cardid = 10202
				endif
				if $rcard == 21  
					$cardid = 10203
				endif
				if $rcard == 22  
					$cardid = 10204
				endif
				if $rcard == 23  
					$cardid = 10205
				endif
				if $rcard == 24  
					$cardid = 10206
				endif
				if $rcard == 25  
					$cardid = 10207
				endif
				if $rcard == 26  
					$cardid = 10208
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