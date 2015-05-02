  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54070
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full, you can't use this Fatecharm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54070 , 1 )
		if $delor == 0
			$rLast	=	GetGlobalVar(354 )
			$rHard1	=	GetGlobalVar(356 )
			$rHard2	=	GetGlobalVar(357 )
			$Limit = 45 + $rLast
			$Limit = $Limit + $rHard1
			$Limit = $Limit + $rHard2
			$suiji = RandomNumber(1,$Limit)
			if $suiji > 45
				$cardid = 0
				$rcard = RandomNumber(1,42)
				if $rcard == 1   
					$cardid = 10158
				endif
				if $rcard == 2   
					$cardid = 10159
				endif
				if $rcard == 3   
					$cardid = 10160
				endif
				if $rcard == 4   
					$cardid = 10161
				endif
				if $rcard == 5   
					$cardid = 10162
				endif
				if $rcard == 6   
					$cardid = 10163
				endif
				if $rcard == 7   
					$cardid = 10164
				endif
				if $rcard == 8   
					$cardid = 10165
				endif
				if $rcard == 9   
					$cardid = 10166
				endif
				if $rcard == 10  
					$cardid = 10167
				endif
				if $rcard == 11  
					$cardid = 10168
				endif
				if $rcard == 12  
					$cardid = 10169
				endif
				if $rcard == 13
					$cardid = 10345
				endif
				if $rcard == 14  
					$cardid = 10228
				endif
				if $rcard == 15  
					$cardid = 10229
				endif
				if $rcard == 16  
					$cardid = 10297
				endif
				if $rcard == 17  
					$cardid = 10298
				endif
				if $rcard == 18  
					$cardid = 10311
				endif
				if $rcard == 19  
					$cardid = 10312
				endif
				if $rcard == 20  
					$cardid = 10313
				endif
				if $rcard == 21  
					$cardid = 10314
				endif
				if $rcard == 22  
					$cardid = 10315
				endif
				if $rcard == 23  
					$cardid = 10316
				endif
				if $rcard == 24  
					$cardid = 10317
				endif
				if $rcard == 25  
					$cardid = 10318
				endif
				if $rcard == 26  
					$cardid = 10319
				endif
				if $rcard == 27  
					$cardid = 10320
				endif
				if $rcard == 28  
					$cardid = 10321
				endif
				if $rcard == 29  
					$cardid = 10322
				endif
				if $rcard == 30  
					$cardid = 10323
				endif
				if $rcard == 31  
					$cardid = 10324
				endif
				if $rcard == 32  
					$cardid = 10325
				endif
				if $rcard == 33  
					$cardid = 10326
				endif
				if $rcard == 34  
					$cardid = 10327
				endif
				if $rcard == 35  
					$cardid = 10328
				endif
				if $rcard == 36  
					$cardid = 10329
				endif
				if $rcard == 37  
					$cardid = 10330
				endif
				if $rcard == 38  
					$cardid = 10331
				endif
				if $rcard == 39  
					$cardid = 10332
				endif
				if $rcard == 40  
					$cardid = 10342
				endif
				if $rcard == 41  
					$cardid = 10343
				endif
				if $rcard == 42  
					$cardid = 10344
				endif
				$HorN = HaveTarot( -1 , $cardid )
				if $HorN == 1
					AddPlayerInfo( -1 , "item" , 54089 , 1 )
					return
				endif
				if $HorN == 0
					AddTarotCard( -1 , $cardid )
					return
				endif
			endif
			AddPlayerInfo( -1 , "item" , 54089 , 1 )
		endif
	}