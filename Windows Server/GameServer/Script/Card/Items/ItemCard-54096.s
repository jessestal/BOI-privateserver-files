  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54090
	//		TaskID:?????904
	//
	//****************************************
	
	function OnUseItem(){
		
		$plevel = GetPlayerInfo( -1, "level")
		if $plevel < 100
			BC( "screen", "player", -1, "Rullamas: Not even LV100, and you think you can finish my quest? Hmph! Go back and train some more!")
			return
		endif
		
		$buff = IsExistStatus(-1 , 21603 )
		if $buff != 0
			BC( "screen", "player", -1, "Rullamas: You've run out of time!")
			CancelTask ( -1 , 2625 )
			CancelTask ( -1 , 2626 )
			CancelTask ( -1 , 2627 )
			CancelTask ( -1 , 2628 )
			return
		endif
		
		$cishu = GetPlayerVar(-1,3539)
		if $cishu > 0
			BC( "screen", "player", -1, "Rullamas: You've completed today's quest!")
			return
		endif
		
		$rMonster = GetGlobalVar(352)
		#monstername = "System Error"
		if $rMonster == 1
			#monstername = "Angkor Warriors: located in the Angkor Temple Level 1"
		endif
		if $rMonster == 2
			#monstername = "Angkor Guardians: located in the Angkor Temple Level 1"
		endif
		if $rMonster == 3
			#monstername = "Ashura Redheads: located in the Angkor Temple Level 1"
		endif
		if $rMonster == 4
			#monstername = "Ashura Sorcerers: located in the Angkor Temple Level 2"
		endif
		if $rMonster == 5
			#monstername = "Ashura Chargers: located in the Angkor Temple Level 2"
		endif
		if $rMonster == 6
			#monstername = "Ashura Berzerkers: located in the Angkor Temple Level 2"
		endif
		if $rMonster == 7
			#monstername = "Ashura Guards: located in the Angkor Temple Level 3"
		endif
		if $rMonster == 8
			#monstername = "Angkor Royal Soldiers: located in the Angkor Temple Level 3"
		endif
		if $rMonster == 9
			#monstername = "Ashura Spellweavers: located in the Angkor Temple Level 3"
		endif
		if $rMonster == 10
			#monstername = "Ashura Generals: located in the Angkor Temple Level 4"
		endif
		if $rMonster == 11
			#monstername = "Ashura Wards: located in the Angkor Temple Level 4"
		endif
		if $rMonster == 12
			#monstername = "Ashura Royal Guards: located in the Angkor Temple Level 4"
		endif
		if $rMonster == 13
			#monstername = "Dragonguards: located in the Emperor's Catacomb Level 3"
		endif
		if $rMonster == 14
			#monstername = "Terracotta Soldiers: located in the Emperor's Catacomb Level 3"
		endif
		if $rMonster == 15
			#monstername = "Berzerker Spirits: located in the Pantheon"
		endif
		if $rMonster == 16
			#monstername = "Demigod Puppets: located in the Pantheon"
		endif
		if $rMonster == 17
			#monstername = "Elite Cyclopes: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 18
			#monstername = "Mecha Judicators: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 19
			#monstername = "Dragonborn Guards: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 20
			#monstername = "Dragonkin Elites: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 21
			#monstername = "Remorseful Knights: located in the Killing Grounds"
		endif
		if $rMonster == 22
			#monstername = "Cruel Rebels:  located in the Killing Grounds"
		endif
		if $rMonster == 23
			#monstername = "Abominable Knights: located in the Killing Grounds"
		endif
		if $rMonster == 24
			#monstername = "Brutal Rebels: located in the Killing Grounds"
		endif
		if $rMonster == 25
			#monstername = "Executioners: located in the Killing Grounds"
		endif
		if $rMonster == 26
			#monstername = "Thundershades: located in the Killing Grounds"
		endif
		if $rMonster == 27
			#monstername = "Island Treants: located in the Emerald Dragon Island"
		endif
		if $rMonster == 28
			#monstername = "Drosera Sprites: located in the Emerald Dragon Island"
		endif
		if $rMonster == 29
			#monstername = "Emerald Dragon Islanders: located in the Emerald Dragon Island"
		endif
		if $rMonster == 30
			#monstername = "Emerald Serpents: located in the Emerald Dragon Island"
		endif
		if $rMonster == 31
			#monstername = "Panda Warriors: located in the White Tiger Den"
		endif
		if $rMonster == 32
			#monstername = "Sabretooth Tigers: located in the White Tiger Den"
		endif
		if $rMonster == 33
			#monstername = "Ranger Beasts: located in the White Tiger Den"
		endif
		if $rMonster == 34
			#monstername = "Jungle Baboons: located in the White Tiger Den"
		endif
		if $rMonster == 35
			#monstername = "Obsidian Warriors: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 36
			#monstername = "Obsidian Scouts: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 37
			#monstername = "White Bison: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 38
			#monstername = "Marsh Elders: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 39
			#monstername = "Soul Rippers: located in the Hades' Temple"
		endif
		if $rMonster == 40
			#monstername = "Soul Whippers: located in the Hades' Temple"
		endif
		if $rMonster == 41
			#monstername = "Corrosive Beholders: located in the Hades' Temple"
		endif
		if $rMonster == 42
			#monstername = "Abyss Spellcasters: located in the Hades' Temple"
		endif
		
		$rLast	=	GetGlobalVar(354 )
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
		$rKind	=	GetGlobalVar(355 )
		$rHard1	=	GetGlobalVar(356 )
		if $rKind == 1
			#QuestKind = "Bloody Sacrifice"
			if $rHard1 == 1
				$QuestNum = 700
			endif
			if $rHard1 == 2
				$QuestNum = 900
			endif
			if $rHard1 == 3
				$QuestNum = 1200
			endif
		endif
		if $rKind == 2
			#QuestKind = "Soul Purification"
			if $rHard1 == 1
				$QuestNum = 100
			endif
			if $rHard1 == 2
				$QuestNum = 150
			endif
			if $rHard1 == 3
				$QuestNum = 200
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
				$QuestNum = 40
			endif
		endif
		if $rKind == 4
			#QuestKind = "Inner Demon Dispeller"
			if $rHard1 == 1
				$QuestNum = 400
			endif
			if $rHard1 == 2
				$QuestNum = 500
			endif
			if $rHard1 == 3
				$QuestNum = 600
			endif
		endif
		
		$Dnum	=	GetPlayerVar(-1,4075 )
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4034 )
		if $player_time == $today_time
			BC( "screen", "player", -1, "Rullamas: Look for Fate Cards? You've got ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,"! Times left today:",$Dnum)
			return
		endif
		BC( "screen", "player", -1, "Rullamas: Come here, let's talk!")
	}