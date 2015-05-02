	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:??
	//		TaskName:Battle-259.s
	//		TaskID: ????
	//
	//****************************************
	
	
	function OnStart(){
		$ectype_ID = GetEctypeID(-1 ,319)
			
		AddResourcePoint( $ectype_ID , 59151, 0, 195, 216, "Stone of Blessings")
		AddResourcePoint( $ectype_ID , 59156, 0, 153, 174, "Inspiration of Gods")
		AddResourcePoint( $ectype_ID , 59161, 0, 108, 131, "Chaos Crystal")
		
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 208 , 138 , 0 , 0 , 195 )
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 204 , 138 , 0 , 0 , 195 )
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 193 , 133 , 0 , 0 , 195 )
		AddMonsterByFloat (59101 , 1 , $ectype_ID , 192 , 127 , 0 , 0 , 195 )
		
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 105 , 203 , 0 , 0 , 175 )
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 109 , 211 , 0 , 0 , 175 )
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 117 , 221 , 0 , 0 , 175 )
		AddMonsterByFloat (59100 , 1 , $ectype_ID , 113 , 216 , 0 , 0 , 175 )
		
		AddMonsterByFloat (59217 , 1 , $ectype_ID , 206 , 117 , 0 , 0 , 300 )
		AddMonsterByFloat (59216 , 1 , $ectype_ID , 104 , 220 , 0 , 0 , 265 )
		
	}

	function OnEnd(){
		$ectype_ID = GetEctypeID(-1 ,319)
		$line = GetServerLineID()
		$num = GetArenaTotalPlayerNum($ectypeID)
		PlaySoundToMap($ectype_ID, "..\\Data\\Audio\\UI\\MainStory.wav")
		$a = GetBattleWinner($ectype_ID)

		if $line == 100
			if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
			if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
		endif	
		
		if $line == 101
			if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
			if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
		endif
		
		if $line == 102
			if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
			if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
		endif					

		if $line == 103
			if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
			if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
		endif

		if $line == 104
			if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
			if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
		endif

		if $line == 105
			if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
			if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
		endif
		
		if $line == 4
			if $a == 1
				BC( "screen", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Mani is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
			if $a == 2
				BC( "screen", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
				BC( "chat", "map", $ectype_ID, "Sol is victorious! Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
			endif
		endif
		
							
			
	//???????
			
		if $line == 100
			AddVictoryCampScore($ectype_ID , 80 )
			AddFailCampScore($ectype_ID , 24 )
		endif
		
		if $line == 101
			AddVictoryCampScore($ectype_ID , 100 )
			AddFailCampScore($ectype_ID , 30 )
		endif
		
		if $line == 102
			AddVictoryCampScore($ectype_ID , 150 )
			AddFailCampScore($ectype_ID , 45 )
		endif				
		
		if $line == 103
			AddVictoryCampScore($ectype_ID , 200 )
			AddFailCampScore($ectype_ID , 80 )
		endif							
		
		if $line == 104
			AddVictoryCampScore($ectype_ID , 200 )
			AddFailCampScore($ectype_ID , 80 )
		endif
		
		if $line == 105
			AddVictoryCampScore($ectype_ID , 300 )
			AddFailCampScore($ectype_ID , 150 )
		endif
		
		if $line == 4
			AddVictoryCampScore($ectype_ID , 100 )
			AddFailCampScore($ectype_ID , 30 )
		endif
								
	}