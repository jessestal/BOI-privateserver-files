	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:?????-???????
	//		TaskID:NPC-903.s
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
		if $aim != 4
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
		
		$rMonster = GetGlobalVar(345)
		$monsterid = 0
		#monstername = "System Error"
		if $rMonster == 1   
			$monsterid = 10051
			#monstername = "Basilisk Guardians: located in the Angkor Jungle"
		endif
		if $rMonster == 2   
			$monsterid = 10052
			#monstername = "Lizard Berzerkers: located in the Angkor Jungle"
		endif
		if $rMonster == 3   
			$monsterid = 10053
			#monstername = "Jungle Sylvans: located in the Angkor Jungle"
		endif
		if $rMonster == 4   
			$monsterid = 10054
			#monstername = "Lizard Zealots: located in the Angkor Jungle"
		endif
		if $rMonster == 5   
			$monsterid = 10055
			#monstername = "Nom Nom Flowers: located in the Angkor Jungle"
		endif
		if $rMonster == 6   
			$monsterid = 10056
			#monstername = "Lizard Grinders: located in the Angkor Jungle"
		endif
		if $rMonster == 7   
			$monsterid = 10057
			#monstername = "Truth Sylvans: located in the Angkor Jungle"
		endif
		if $rMonster == 8   
			$monsterid = 10061
			#monstername = "Tribe Fighters: located in the Angkor Encampment"
		endif
		if $rMonster == 9   
			$monsterid = 10062
			#monstername = "Tribe Guards: located in the Angkor Encampment"
		endif
		if $rMonster == 10  
			$monsterid = 10063
			#monstername = "Fallen Tribesmen: located in the Angkor Encampment"
		endif
		if $rMonster == 11  
			$monsterid = 10064
			#monstername = "Jungle Defenders: located in the Angkor Encampment"
		endif
		if $rMonster == 12  
			$monsterid = 10065
			#monstername = "Jungle Protectors: located in the Angkor Encampment"
		endif
		if $rMonster == 13  
			$monsterid = 10066
			#monstername = "Ashura Windriders: located in the Angkor Encampment"
		endif
		if $rMonster == 14  
			$monsterid = 10091
			#monstername = "Forest Guardians: located in the Dwarves' Forest"
		endif
		if $rMonster == 15 
			$monsterid = 10093
			#monstername = "Goblin Enchanters: located in the Dwarves' Forest"
		endif
		if $rMonster == 16 
			$monsterid = 10095
			#monstername = "Goblin Wizards: located in the Dwarves' Forest"
		endif
		if $rMonster == 17
			$monsterid = 10096
			#monstername = "Dwarf Misers: located in the Dwarves' Forest"
		endif
		if $rMonster == 18
			$monsterid = 10101
			#monstername = "Minotaurs: located in the Viking Steppe"
		endif
		if $rMonster == 19
			$monsterid = 10107
			#monstername = "Bloodhoof Trampers: located in the Viking Steppe"
		endif
		if $rMonster == 20
			$monsterid = 10102
			#monstername = "Diabolic Wolves: located in the Viking Steppe"
		endif
		if $rMonster == 21
			$monsterid = 10103
			#monstername = "Karth's Children: located in the Viking Steppe"
		endif
		if $rMonster == 22
			$monsterid = 10104
			#monstername = "Modo Warriors: located in the Viking Steppe"
		endif
		if $rMonster == 23
			$monsterid = 10105
			#monstername = "Modo Marauders: located in the Viking Steppe"
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
			SetPlayerVar( -1, 3534 , 4 )
			AddStatus( -1, 21601 , $rLast )
			$canyunum	=	GetServerVar(883)
			$canyunum = $canyunum + 1
			SetServerVar(883,$canyunum)
			AddPlayerInfo( -1 , "item", 54093 , 1 )
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
		AddPlayerInfo( -1 , "item" , 54084 , 1 )
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