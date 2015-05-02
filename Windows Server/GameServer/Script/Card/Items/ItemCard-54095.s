  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54095
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's already full. Cannot get the rewards!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54095 , 1 )
		if $delor == 0
			$rLast	=	GetGlobalVar(346 )
			$rKind	=	GetGlobalVar(347 )
			$rHard1	=	GetGlobalVar(348 )
			$rHard2	=	GetGlobalVar(349 )
			$Dnum	=	GetPlayerVar(-1,4074 )
			if $rKind == 1
				if $rHard1 == 1
					$QuestNum = 300
				endif
				if $rHard1 == 2
					$QuestNum = 900
				endif
				if $rHard1 == 3
					$QuestNum = 1500
				endif
			endif
			if $rKind == 2
				if $rHard1 == 1
					$QuestNum = 50
				endif
				if $rHard1 == 2
					$QuestNum = 150
				endif
				if $rHard1 == 3
					$QuestNum = 250
				endif
			endif
			if $rKind == 3
				if $rHard1 == 1
					$QuestNum = 20
				endif
				if $rHard1 == 2
					$QuestNum = 30
				endif
				if $rHard1 == 3
					$QuestNum = 60
				endif
			endif
			if $rKind == 4
				if $rHard1 == 1
					$QuestNum = 200
				endif
				if $rHard1 == 2
					$QuestNum = 500
				endif
				if $rHard1 == 3
					$QuestNum = 800
				endif
			endif
			$anwei = RandomNumber(0,$QuestNum)
			if $anwei < $Dnum
				AddPlayerInfo( -1 , "item" , 59104 , 1 )
				return
			endif
			$Limit = 9 + $rLast
			$Limit = $Limit + $rHard1
			$Limit = $Limit + $rHard2
			$suiji = RandomNumber(1,$Limit)
			if $suiji > 9
				AddPlayerInfo( -1 , "item" , 54088 , 1 )
				return
			endif
			AddPlayerInfo( -1 , "item" , 59104 , 1 )
		endif
		
	}