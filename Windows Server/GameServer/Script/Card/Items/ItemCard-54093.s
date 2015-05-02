  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54093
	//		TaskID:?????908
	//
	//****************************************
	
	function OnUseItem(){
		
		$plevel = GetPlayerInfo( -1, "level")
		if $plevel < 20
			BC( "screen", "player", -1, "Arethusa: Sorry, but I don't think you can help me. Come back once you reach LV20.")
			return
		endif
		
		$buff = IsExistStatus(-1 , 21601 )
		if $buff != 0
			$rKind	=	GetGlobalVar(347 )
			if $rKind == 0
				BC( "screen", "player", -1, "Brave warrior, please give me Verdandi's Letter quickly!")
				return
			endif
			BC( "screen", "player", -1, "Arethusa: Sorry, but you've run out of time for today!")
			return
		endif
		
		$cishu = GetPlayerVar(-1,3536)
		if $cishu > 0
			BC( "screen", "player", -1, "Arethusa: You've finished the requirements! Come back and find me, quickly!")
			return
		endif
		
		$who = GetPlayerVar( -1, 3534)
		if $who != 4
			BC( "screen", "player", -1, "There's no response. You may be too far away from Arethusa.")
			return
		endif
		
		$rMonster = GetGlobalVar(345)
		#monstername = "System Error"
		if $rMonster == 1
			#monstername = "Basilisk Guardians: located in the Angkor Jungle"
		endif
		if $rMonster == 2
			#monstername = "Lizard Berzerkers: located in the Angkor Jungle"
		endif
		if $rMonster == 3
			#monstername = "Jungle Sylvans: located in the Angkor Jungle"
		endif
		if $rMonster == 4
			#monstername = "Lizard Zealots: located in the Angkor Jungle"
		endif
		if $rMonster == 5
			#monstername = "Nom Nom Flowers: located in the Angkor Jungle"
		endif
		if $rMonster == 6
			#monstername = "Lizard Grinders: located in the Angkor Jungle"
		endif
		if $rMonster == 7
			#monstername = "Truth Sylvans: located in the Angkor Jungle"
		endif
		if $rMonster == 8
			#monstername = "Tribe Fighters: located in the Angkor Encampment"
		endif
		if $rMonster == 9
			#monstername = "Tribe Guards: located in the Angkor Encampment"
		endif
		if $rMonster == 10
			#monstername = "Fallen Tribesmen: located in the Angkor Encampment"
		endif
		if $rMonster == 11
			#monstername = "Jungle Defenders: located in the Angkor Encampment"
		endif
		if $rMonster == 12
			#monstername = "Jungle Protectors: located in the Angkor Encampment"
		endif
		if $rMonster == 13
			#monstername = "Ashura Windriders: located in the Angkor Encampment"
		endif
		if $rMonster == 14
			#monstername = "Forest Guardians: located in the Dwarves' Forest"
		endif
		if $rMonster == 15
			#monstername = "Goblin Enchanters: located in the Dwarves' Forest"
		endif
		if $rMonster == 16
			#monstername = "Goblin Wizards: located in the Dwarves' Forest"
		endif
		if $rMonster == 17
			#monstername = "Dwarf Misers: located in the Dwarves' Forest"
		endif
		if $rMonster == 18
			#monstername = "Minotaurs: located in the Viking Steppe"
		endif
		if $rMonster == 19
			#monstername = "Bloodhoof Trampers: located in the Viking Steppe"
		endif
		if $rMonster == 20
			#monstername = "Diabolic Wolves: located in the Viking Steppe"
		endif
		if $rMonster == 21
			#monstername = "Karth's Children: located in the Viking Steppe"
		endif
		if $rMonster == 22
			#monstername = "Modo Warriors: located in the Viking Steppe"
		endif
		if $rMonster == 23
			#monstername = "Modo Marauders: located in the Viking Steppe"
		endif
		
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
		
		$Dnum	=	GetPlayerVar(-1,4074 )
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4031 )
		if $player_time == $today_time
			if $rKind == 0
				BC( "screen", "player", -1, "Brave warrior, please give me Verdandi's Letter quickly!")
				BC( "chat", "player", -1, "Brave warrior, please give me Verdandi's Letter quickly!")
				return
			endif
			BC( "screen", "player", -1, "Arethusa: today my request is that",#TimeLong,", kill ",#monstername," to collect ",$QuestNum," items for ",#QuestKind,"! Times left today:",$Dnum)
			return
		endif
		BC( "screen", "player", -1, "Arethusa: Please accept today's quest!")
	}