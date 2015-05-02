  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54101
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
			$delor = SubPlayerInfo( -1 , "item", 54101 , 1 )
			$xingzuo = 0
			if $delor == 0
				$day = GetSystemTime( "mday" )
				$mon = GetSystemTime( "month" )
				if $mon == 1
					if $day <= 20
						$xingzuo = 2509
					else
						$xingzuo = 2510
					endif
				endif
				if $mon == 2
					if $day <= 19
						$xingzuo = 2510
					else
						$xingzuo = 2511
					endif
				endif
				if $mon == 3
					if $day <= 20
						$xingzuo = 2511
					else
						$xingzuo = 2512
					endif
				endif
				if $mon == 4
					if $day <= 20
						$xingzuo = 2512
					else
						$xingzuo = 2501
					endif
				endif
				if $mon == 5
					if $day <= 21
						$xingzuo = 2501
					else
						$xingzuo = 2502
					endif
				endif
				if $mon == 6
					if $day <= 21
						$xingzuo = 2502
					else
						$xingzuo = 2503
					endif
				endif
				if $mon == 7
					if $day <= 22
						$xingzuo = 2503
					else
						$xingzuo = 2504
					endif
				endif
				if $mon == 8
					if $day <= 23
						$xingzuo = 2504
					else
						$xingzuo = 2505
					endif
				endif
				if $mon == 9
					if $day <= 23
						$xingzuo = 2505
					else
						$xingzuo = 2506
					endif
				endif
				if $mon == 10
					if $day <= 23
						$xingzuo = 2506
					else
						$xingzuo = 2507
					endif
				endif
				if $mon == 11
					if $day <= 22
						$xingzuo = 2507
					else
						$xingzuo = 2508
					endif
				endif
				if $mon == 12
					if $day <= 21
						$xingzuo = 2508
					else
						$xingzuo = 2509
					endif
				endif
				$HorN = HaveTarot( -1 , $xingzuo )
				if $HorN == 1
					BC( "screen", "player", -1 , "You've already received the current zodiac card!")
					return
				endif
				AddTarotCard( -1 , $xingzuo )
			endif
		
	}