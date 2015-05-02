	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:?????-????
	//		TaskID:NPC-906.s
	//
	//****************************************
	
	function OnRequest(){
		
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4031 )
		if $player_time != $today_time
			SetPlayerVar(-1,3536,0)
			CancelTask ( -1 , 2621 )
			CancelTask ( -1 , 2622 )
			CancelTask ( -1 , 2623 )
			CancelTask ( -1 , 2624 )
			CancelTask ( -1 , 2629 )
		endif
		$cishu = GetPlayerVar(-1,3536)
		if $cishu != 1
			DisableNpcOption(1)
		endif
		$aim = GetPlayerVar( -1, 3534 )
		if $aim != 2
			DisableNpcOption(1)
		endif
		if $player_time == $today_time
			DisableNpcOption(0)
		endif
	}
	
	//?????(???)
	function OnOption0(){
		
		$plevel = GetPlayerInfo( -1, "level")
		if $plevel < 20
			BC( "screen", "player", -1, "Sorry, but I don't think you can help me. Come back once you reach LV20.")
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "There's not enough space in your bag for the quest items!")
			return
		endif
		
		$rMonster = GetGlobalVar(342)
		$monsterid = 0
		#monstername = "System Error"
		if $rMonster == 1   
			$monsterid = 10031
			#monstername = "Great Bermuda Corals: located in the Bermuda Islands"
		endif
			if $rMonster == 2   
			$monsterid = 10032
			#monstername = "Death Corals: located in the Bermuda Islands"
		endif
			if $rMonster == 3   
			$monsterid = 10033
			#monstername = "Necrotresses: located in the Bermuda Islands"
		endif
			if $rMonster == 4   
			$monsterid = 10034
			#monstername = "Bermuda Gorgons: located in the Bermuda Islands"
		endif
			if $rMonster == 5   
			$monsterid = 10035
			#monstername = "Gorgon Guardians: located in the Bermuda Islands"
		endif
			if $rMonster == 6   
			$monsterid = 10036
			#monstername = "Gorgon Warriors: located in the Bermuda Islands"
		endif
			if $rMonster == 7   
			$monsterid = 10037
			#monstername = "Spectres: located in the Bermuda Islands"
		endif
			if $rMonster == 8   
			$monsterid = 10111
			#monstername = "Glacier Wolves: located in the Nordic Lands"
		endif
			if $rMonster == 9   
			$monsterid = 10112
			#monstername = "Thunder Leopards: located in the Nordic Lands"
		endif
			if $rMonster == 10  
			$monsterid = 10113
			#monstername = "Centaur Sentinels: located in the Nordic Lands"
		endif
			if $rMonster == 11  
			$monsterid = 10114
			#monstername = "Armored Polar Bears: located in the Nordic Lands"
		endif
			if $rMonster == 12  
			$monsterid = 10115
			#monstername = "Centaur Drunks: located in the Nordic Lands"
		endif
			if $rMonster == 13  
			$monsterid = 10116
			#monstername = "Bellika Tamers: located in Nordic Lands"
		endif
			if $rMonster == 14  
			$monsterid = 10117
			#monstername = "Bellika Frostgrunts: located in the Nordic Lands"
		endif
			if $rMonster == 15  
			$monsterid = 10741
			#monstername = "Rancos: located in the Northern Easter Island"
		endif
			if $rMonster == 16  
			$monsterid = 10742
			#monstername = "Bladeclaw Wolves: located in the Northern Easter Island"
		endif
			if $rMonster == 17  
			$monsterid = 10743
			#monstername = "Blackmane Gibbons: located in the Northern Easter Island"
		endif
			if $rMonster == 18  
			$monsterid = 10751
			#monstername = "Thorny Petals: located in the Easter Island South"
		endif
			if $rMonster == 19  
			$monsterid = 10752
			#monstername = "Bloodlust Whitebears: located in the Easter Island South"
		endif
			if $rMonster == 20  
			$monsterid = 10753
			#monstername = "Quarry Basilisks: located in the Easter Island South"
		endif
			if $rMonster == 21  
			$monsterid = 10171
			#monstername = "Scarlet Trappers: located in the Burning Land"
		endif
			if $rMonster == 22  
			$monsterid = 10172
			#monstername = "Flame Tiles: located in the Burning Land"
		endif
			if $rMonster == 23  
			$monsterid = 10173
			#monstername = "Burning Eyes: located in the Burning Land"
		endif
			if $rMonster == 24  
			$monsterid = 10174
			#monstername = "Burning Riders: located in the Burning Land"
		endif
		SetPlayerVar(-1, 4032, $monsterid )
		
		$rLast	=	GetGlobalVar(346 )
		#TimeLong = "System Error"
		if $rLast == 1
			#TimeLong = "2 hours"
		endif
		if $rLast == 2
			#TimeLong = "1.5 hours"
		endif
		if $rLast == 3
			#TimeLong = "1 hour"
		endif
		
		#QuestKind = "System Error"
		$QuestNum = -1
		$rKind	=	GetGlobalVar(347 )
		$rHard1	=	GetGlobalVar(348 )
		if $rKind == 1
			#QuestKind = "Bloody Sacrifice"
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
			#QuestKind = "Soul Purification"
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
			#QuestKind = "Spirit Drain"
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
			#QuestKind = "Nightmare Dispeller"
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
		
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4031 )
		$cishu = GetPlayerVar(-1,3536)
		if $cishu > 0
			BC( "screen", "player", -1, "You've completed today's quest!")
			return
		endif
		if $player_time == $today_time
			if $rKind == 0
				BC( "screen", "player", -1, "Brave warrior, please give me Verdandi's Letter quickly!")
				BC( "chat", "player", -1, "Brave warrior, please give me Verdandi's Letter quickly!")
				return
			endif
			BC( "screen", "player", -1, "I need your help recovering my strength. I can give you ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". You won't go unrewarded!")
			BC( "chat", "player", -1, "I need your help recovering my strength. I can give you ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". You won't go unrewarded!")
			return
		endif
		if $player_time != $today_time
			SetPlayerVar(-1,238,0)
			SetPlayerVar(-1,4031,$today_time)
			SetPlayerVar( -1, 4074 , $QuestNum )
			SetPlayerVar( -1, 3534 , 2 )
			AddStatus( -1, 21601 , $rLast )
			$canyunum	=	GetServerVar(883)
			$canyunum = $canyunum + 1
			SetServerVar(883,$canyunum)
			AddPlayerInfo( -1 , "item", 54091 , 1 )
			CancelTask ( -1 , 2621 )
			CancelTask ( -1 , 2622 )
			CancelTask ( -1 , 2623 )
			CancelTask ( -1 , 2624 )
			CancelTask ( -1 , 2629 )
			$Wtask = $rKind + 2620
			if $rKind == 0
				$Wtask = 2629
			endif
			AcceptTask( -1 , $Wtask )
			if $rKind == 1
				$rHard2	=	GetGlobalVar(349 )
				if $rHard2 == 2
					AddStatus( -1, 21604 , $rLast )
				endif
				if $rHard2 == 3
					AddStatus( -1, 21605 , $rLast )
				endif
			endif
			if $rKind == 0
				BC( "screen", "player", -1, "Brave warrior, please give me Verdandi's Letter quickly!")
				BC( "chat", "player", -1, "Brave warrior, please give me Verdandi's Letter quickly!")
				return
			endif
			BC( "screen", "player", -1, "I need your help recovering my strength. I can give you ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". You won't go unrewarded!")
			BC( "chat", "player", -1, "I need your help recovering my strength. I can give you ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". You won't go unrewarded!")
		endif
	}
	
	//????
	function OnOption1(){
		$cishu = GetPlayerVar(-1,3536)
		if $cishu != 1
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "There's not enough space in your bag for the reward!")
			return
		endif
		
		SubPlayerInfo( -1 , "item", 54090 , 1 )
		SubPlayerInfo( -1 , "item", 54091 , 1 )
		SubPlayerInfo( -1 , "item", 54092 , 1 )
		SubPlayerInfo( -1 , "item", 54093 , 1 )
		SubPlayerInfo( -1 , "item", 54094 , 1 )
		SubPlayerInfo( -1 , "item", 54109 , 1 )
		AddPlayerInfo( -1 , "item" , 54079 , 1 )
		CancelTask ( -1 , 2621 )
		CancelTask ( -1 , 2622 )
		CancelTask ( -1 , 2623 )
		CancelTask ( -1 , 2624 )
		CancelTask ( -1 , 2629 )
		SetPlayerVar(-1,3536,2)
		$canyunum	=	GetServerVar(885)
		$canyunum = $canyunum + 1
		SetServerVar(885,$canyunum)
		
	}