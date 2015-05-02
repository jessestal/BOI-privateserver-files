	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-220.s
	//		TaskID: ????
	//
	//****************************************
	
	
	function OnStart(){
	
		AddResourcePoint( 220 , 59001, 0, 144, 218, "Stone of Blessings")
		AddResourcePoint( 220 , 59006, 0, 161, 168, "Inspiration of Gods" )
		AddResourcePoint( 220 , 59011, 0, 171, 104, "Chaos Crystal")
		AddMonster (59042 , 1 , 220 , 79 , 33 , 0 )
		AddMonster (59042 , 1 , 220 , 79 , 35 , 0 )
		AddMonster (59042 , 1 , 220 , 80 , 35 , 0 )
		AddMonster (59042 , 1 , 220 , 80 , 33 , 0 )
		AddMonster (59042 , 1 , 220 , 80 , 46 , 0 )
		AddMonster (59042 , 1 , 220 , 81 , 47 , 0 )
		AddMonster (59042 , 1 , 220 , 82 , 46 , 0 )
		AddMonster (59042 , 1 , 220 , 81 , 45 , 0 )
		AddMonster (59042 , 1 , 220 , 92 , 48 , 0 )
		AddMonster (59042 , 1 , 220 , 93 , 48 , 0 )
		AddMonster (59042 , 1 , 220 , 94 , 47 , 0 )
		AddMonster (59042 , 1 , 220 , 92 , 47 , 0 )
		
		AddMonster (59077 , 1 , 220 , 91 , 34 , 0 )
		AddMonster (59077 , 1 , 220 , 93 , 36 , 0 )
		AddMonster (59077 , 1 , 220 , 89 , 35 , 0 )
		AddMonster (59077 , 1 , 220 , 91 , 38 , 0 )
		
		
		AddMonster (59041 , 1 , 220 , 49 , 93 , 0 )
		AddMonster (59041 , 1 , 220 , 49 , 91 , 0 )
		AddMonster (59041 , 1 , 220 , 46 , 91 , 0 )
		AddMonster (59041 , 1 , 220 , 46 , 93 , 0 )
		AddMonster (59041 , 1 , 220 , 48 , 81 , 0 )
		AddMonster (59041 , 1 , 220 , 47 , 79 , 0 )
		AddMonster (59041 , 1 , 220 , 45 , 81 , 0 )
		AddMonster (59041 , 1 , 220 , 46 , 82 , 0 )
		AddMonster (59041 , 1 , 220 , 36 , 78 , 0 )
		AddMonster (59041 , 1 , 220 , 34 , 78 , 0 )
		AddMonster (59041 , 1 , 220 , 34 , 81 , 0 )
		AddMonster (59041 , 1 , 220 , 36 , 81 , 0 )
		
		AddMonster (59076 , 1 , 220 , 34 , 89 , 0 )
		AddMonster (59076 , 1 , 220 , 34 , 91 , 0 )
		AddMonster (59076 , 1 , 220 , 38 , 93 , 0 )
		AddMonster (59076 , 1 , 220 , 36 , 93 , 0 )
	}

	function OnEnd(){
		PlaySoundToMap(220, "..\\Data\\Audio\\UI\\MainStory.wav")
		$a = GetBattleWinner(220)
		if $a == 1
			BC( "screen", "server", -1, "Mani is victorious!" )
			BC( "chat", "server", -1, "Mani is victorious!" )
		endif
		if $a == 2
			BC( "screen", "server", -1, "Sol is victorious!" )
			BC( "chat", "server", -1, "Sol is victorious!" )
		endif
		//??????????
		AddLoserCredit( 220 , 10 , 15 )
		//??????????
		AddWinnerCredit( 220 , 10 , 35 )
		BC( "screen", "server", -1, "Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
		BC( "chat", "server", -1, "Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
		
	}