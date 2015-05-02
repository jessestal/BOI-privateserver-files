	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:????
	//		TaskID:NPC-904.s
	//
	//****************************************
	
	function OnRequest(){
		
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4034 )
		if $player_time != $today_time
			SetPlayerVar(-1,3539,0)
			CancelTask ( -1 , 2625 )
			CancelTask ( -1 , 2626 )
			CancelTask ( -1 , 2627 )
			CancelTask ( -1 , 2628 )
		endif
		$cishu = GetPlayerVar(-1,3539)
		if $cishu != 1
			DisableNpcOption(1)
		endif
		if $player_time == $today_time
			DisableNpcOption(0)
		endif
	}
	
	//????(???)
	function OnOption0(){
		
		$plevel = GetPlayerInfo( -1, "level")
		if $plevel < 100
			BC( "screen", "player", -1, "Not even LV100, and you think you can finish my quest? Hmph! Go back and train some more!")
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "There's not enough space in your bag for the quest items!")
			return
		endif
		
		$rMonster = GetGlobalVar(352)
		$monsterid = 0
		#monstername = "System Error"
		if $rMonster == 1   
			$monsterid = 10421
			#monstername = "Angkor Warriors: located in the Angkor Temple Level 1"
		endif
		if $rMonster == 2   
			$monsterid = 10422
			#monstername = "Angkor Guardians: located in the Angkor Temple Level 1"
		endif
		if $rMonster == 3   
			$monsterid = 10423
			#monstername = "Ashura Redheads: located in the Angkor Temple Level 1"
		endif
		if $rMonster == 4   
			$monsterid = 10431
			#monstername = "Ashura Sorcerers: located in the Angkor Temple Level 2"
		endif
		if $rMonster == 5   
			$monsterid = 10432
			#monstername = "Ashura Chargers: located in the Angkor Temple Level 2"
		endif
		if $rMonster == 6   
			$monsterid = 10433
			#monstername = "Ashura Berzerkers: located in the Angkor Temple Level 2"
		endif
		if $rMonster == 7   
			$monsterid = 10441
			#monstername = "Ashura Guards: located in the Angkor Temple Level 3"
		endif
		if $rMonster == 8   
			$monsterid = 10442
			#monstername = "Angkor Royal Soldiers: located in the Angkor Temple Level 3"
		endif
		if $rMonster == 9   
			$monsterid = 10443
			#monstername = "Ashura Spellweavers: located in the Angkor Temple Level 3"
		endif
		if $rMonster == 10  
			$monsterid = 10451
			#monstername = "Ashura Generals: located in the Angkor Temple Level 4"
		endif
		if $rMonster == 11  
			$monsterid = 10452
			#monstername = "Ashura Wards: located in the Angkor Temple Level 4"
		endif
		if $rMonster == 12  
			$monsterid = 10453
			#monstername = "Ashura Royal Guards: located in the Angkor Temple Level 4"
		endif
		if $rMonster == 13  
			$monsterid = 20861
			#monstername = "Dragonguards: located in the Emperor's Catacomb Level 3"
		endif
		if $rMonster == 14  
			$monsterid = 20862
			#monstername = "Terracotta Soldiers: located in the Emperor's Catacomb Level 3"
		endif
		if $rMonster == 15  
			$monsterid = 21206
			#monstername = "Berzerker Spirits: located in the Pantheon"
		endif
		if $rMonster == 16  
			$monsterid = 21207
			#monstername = "Demigod Puppets: located in the Pantheon"
		endif
		if $rMonster == 17  
			$monsterid = 21241
			#monstername = "Elite Cyclopes: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 18  
			$monsterid = 21242
			#monstername = "Mecha Judicators: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 19  
			$monsterid = 21243
			#monstername = "Dragonborn Guards: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 20  
			$monsterid = 21244
			#monstername = "Dragonkin Elites: located in the Dragon Lair Level 2"
		endif
		if $rMonster == 21  
			$monsterid = 21251
			#monstername = "Remorseful Knights: located in the Killing Grounds"
		endif
		if $rMonster == 22  
			$monsterid = 21252
			#monstername = "Cruel Rebels: located in the Killing Grounds"
		endif
		if $rMonster == 23  
			$monsterid = 21253
			#monstername = "Abominable Knights: located in the Killing Grounds"
		endif
		if $rMonster == 24  
			$monsterid = 21254
			#monstername = "Brutal Rebels: located in the Killing Grounds"
		endif
		if $rMonster == 25  
			$monsterid = 21255
			#monstername = "Executioners: located in the Killing Grounds"
		endif
		if $rMonster == 26  
			$monsterid = 21256
			#monstername = "Thundershades: located in the Killing Grounds"
		endif
		if $rMonster == 27  
			$monsterid = 21261
			#monstername = "Island Treants: located in the Emerald Dragon Island"
		endif
		if $rMonster == 28  
			$monsterid = 21262
			#monstername = "Drosera Sprites: located in the Emerald Dragon Island"
		endif
		if $rMonster == 29  
			$monsterid = 21263
			#monstername = "Emerald Dragon Islanders: located in the Emerald Dragon Island"
		endif
		if $rMonster == 30  
			$monsterid = 21264
			#monstername = "Emerald Serpents: located in the Emerald Dragon Island"
		endif
		if $rMonster == 31  
			$monsterid = 21271
			#monstername = "Panda Warriors: located in the White Tiger Den"
		endif
		if $rMonster == 32  
			$monsterid = 21272
			#monstername = "Sabretooth Tigers: located in the White Tiger Den"
		endif
		if $rMonster == 33  
			$monsterid = 21273
			#monstername = "Ranger Beasts: located in the White Tiger Den"
		endif
		if $rMonster == 34  
			$monsterid = 21274
			#monstername = "Jungle Baboons: located in the White Tiger Den"
		endif
		if $rMonster == 35  
			$monsterid = 21281
			#monstername = "Obsidian Warriors: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 36  
			$monsterid = 21282
			#monstername = "Obsidian Scouts: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 37  
			$monsterid = 21283
			#monstername = "White Bison: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 38  
			$monsterid = 21284
			#monstername = "Marsh Elders: located in the Obsidian Turtle Pool"
		endif
		if $rMonster == 39  
			$monsterid = 12021
			#monstername = "Soul Rippers: located in the Hades' Temple"
		endif
		if $rMonster == 40  
			$monsterid = 12022
			#monstername = "Soul Whippers: located in the Hades' Temple"
		endif
		if $rMonster == 41  
			$monsterid = 12024
			#monstername = "Corrosive Beholders: located in the Hades' Temple"
		endif
		if $rMonster == 42  
			$monsterid = 12025
			#monstername = "Abyss Spellcasters: located in the Hades' Temple"
		endif
		SetPlayerVar(-1, 4035, $monsterid )
		
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
		
		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 4034 )
		$cishu = GetPlayerVar(-1,3539)
		if $cishu > 0
			BC( "screen", "player", -1, "You've completed today's quest!")
			return
		endif
		if $player_time == $today_time
			BC( "screen", "player", -1, "Looking for Fate Cards? You've got ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". Prove your worth, and you might get something good!")
			BC( "chat", "player", -1, "Looking for Fate Cards? You've got ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". Prove your worth, and you might get something good!")
		endif
		if $player_time != $today_time
			SetPlayerVar(-1,239,0)
			SetPlayerVar(-1,4034,$today_time)
			SetPlayerVar( -1, 4075 , $QuestNum )
			AddStatus( -1, 21603 , $rLast )
			$canyunum	=	GetServerVar(884)
			$canyunum = $canyunum + 1
			SetServerVar(884,$canyunum)
			AddPlayerInfo( -1 , "item", 54096 , 1 )
			CancelTask ( -1 , 2625 )
			CancelTask ( -1 , 2626 )
			CancelTask ( -1 , 2627 )
			CancelTask ( -1 , 2628 )
			$Wtask = $rKind + 2624
			AcceptTask( -1 , $Wtask )
			if $rKind == 1
				$rHard2	=	GetGlobalVar(357 )
				if $rHard2 == 2
					AddStatus( -1, 21604 , $rLast )
				endif
				if $rHard2 == 3
					AddStatus( -1, 21605 , $rLast )
				endif
			endif
			BC( "screen", "player", -1, "Looking for Fate Cards? You've got ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". Prove your worth, and you might get something good!")
			BC( "chat", "player", -1, "Looking for Fate Cards? You've got ",#TimeLong," to kill enough ",#monstername," to get ",$QuestNum," items for ",#QuestKind,". Prove your worth, and you might get something good!")
		endif
	}
	
	//????
	function OnOption1(){
		$cishu = GetPlayerVar(-1,3539)
		if $cishu != 1
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "There's not enough space in your bag for the reward!")
			return
		endif
		
		SubPlayerInfo( -1 , "item", 54096 , 1 )
		AddPlayerInfo( -1 , "item" , 54070 , 1 )
		CancelTask ( -1 , 2625 )
		CancelTask ( -1 , 2626 )
		CancelTask ( -1 , 2627 )
		CancelTask ( -1 , 2628 )
		SetPlayerVar(-1,3539,2)
		$canyunum	=	GetServerVar(886)
		$canyunum = $canyunum + 1
		SetServerVar(886,$canyunum)
		
	}