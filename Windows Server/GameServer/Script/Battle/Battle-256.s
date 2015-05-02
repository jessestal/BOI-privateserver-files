	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-256.s
	//		TaskID: ????
	//
	//****************************************
	
	
	function OnStart(){
	
		AddResourcePoint( 256 , 59081, 0, 144, 218, "Stone of Blessings")
		AddResourcePoint( 256 , 59086, 0, 161, 168, "Inspiration of Gods" )
		AddResourcePoint( 256 , 59091, 0, 171, 104, "Chaos Crystal")
		AddMonster (59099 , 1 , 256 , 79 , 33 , 0 )
		AddMonster (59099 , 1 , 256 , 79 , 35 , 0 )
		AddMonster (59099 , 1 , 256 , 80 , 35 , 0 )
		AddMonster (59099 , 1 , 256 , 80 , 33 , 0 )
		AddMonster (59099 , 1 , 256 , 80 , 46 , 0 )
		AddMonster (59099 , 1 , 256 , 81 , 47 , 0 )
		AddMonster (59099 , 1 , 256 , 82 , 46 , 0 )
		AddMonster (59099 , 1 , 256 , 81 , 45 , 0 )
		AddMonster (59099 , 1 , 256 , 92 , 48 , 0 )
		AddMonster (59099 , 1 , 256 , 93 , 48 , 0 )
		AddMonster (59099 , 1 , 256 , 94 , 47 , 0 )
		AddMonster (59099 , 1 , 256 , 92 , 47 , 0 )
		
		AddMonster (59101 , 1 , 256 , 91 , 34 , 0 )
		AddMonster (59101 , 1 , 256 , 93 , 36 , 0 )
		AddMonster (59101 , 1 , 256 , 89 , 35 , 0 )
		AddMonster (59101 , 1 , 256 , 91 , 38 , 0 )
		
		
		AddMonster (59098 , 1 , 256 , 49 , 93 , 0 )
		AddMonster (59098 , 1 , 256 , 49 , 91 , 0 )
		AddMonster (59098 , 1 , 256 , 46 , 91 , 0 )
		AddMonster (59098 , 1 , 256 , 46 , 93 , 0 )
		AddMonster (59098 , 1 , 256 , 48 , 81 , 0 )
		AddMonster (59098 , 1 , 256 , 47 , 79 , 0 )
		AddMonster (59098 , 1 , 256 , 45 , 81 , 0 )
		AddMonster (59098 , 1 , 256 , 46 , 82 , 0 )
		AddMonster (59098 , 1 , 256 , 36 , 78 , 0 )
		AddMonster (59098 , 1 , 256 , 34 , 78 , 0 )
		AddMonster (59098 , 1 , 256 , 34 , 81 , 0 )
		AddMonster (59098 , 1 , 256 , 36 , 81 , 0 )
		
		AddMonster (59100 , 1 , 256 , 34 , 89 , 0 )
		AddMonster (59100 , 1 , 256 , 34 , 91 , 0 )
		AddMonster (59100 , 1 , 256 , 38 , 93 , 0 )
		AddMonster (59100 , 1 , 256 , 36 , 93 , 0 )
	}

	function OnEnd(){
		PlaySoundToMap(256, "..\\Data\\Audio\\UI\\MainStory.wav")
		$a = GetBattleWinner(256)
		if $a == 1
			BC( "screen", "server", -1, "Mani is victorious!" )
			BC( "chat", "server", -1, "Mani is victorious!" )
		endif
		if $a == 2
			BC( "screen", "server", -1, "Sol is victorious!" )
			BC( "chat", "server", -1, "Sol is victorious!" )
		endif
		//??????????
		AddLoserCredit( 256 , 10 , 30 )
		//??????????
		AddWinnerCredit( 256 , 10 , 70 )
		BC( "screen", "server", -1, "Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
		BC( "chat", "server", -1, "Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
		
	}