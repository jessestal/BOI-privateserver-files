	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/23
	//		Author:???
	//		TaskName:Battle-234.s
	//		TaskID: ????
	//
	//****************************************
	
	
	function OnStart(){
	
		AddResourcePoint( 234 , 59021, 0, 144, 218, "Stone of Blessings")
		AddResourcePoint( 234 , 59026, 0, 161, 168, "Inspiration of Gods" )
		AddResourcePoint( 234 , 59031, 0, 171, 104, "Chaos Crystal")
		
		AddMonster (59044 , 1 , 234 , 79 , 33 , 0 )
		AddMonster (59044 , 1 , 234 , 79 , 35 , 0 )
		AddMonster (59044 , 1 , 234 , 80 , 35 , 0 )
		AddMonster (59044 , 1 , 234 , 80 , 33 , 0 )
		AddMonster (59044 , 1 , 234 , 80 , 46 , 0 )
		AddMonster (59044 , 1 , 234 , 81 , 47 , 0 )
		AddMonster (59044 , 1 , 234 , 82 , 46 , 0 )
		AddMonster (59044 , 1 , 234 , 81 , 45 , 0 )
		AddMonster (59044 , 1 , 234 , 92 , 48 , 0 )
		AddMonster (59044 , 1 , 234 , 93 , 48 , 0 )
		AddMonster (59044 , 1 , 234 , 94 , 47 , 0 )
		AddMonster (59044 , 1 , 234 , 92 , 47 , 0 )
		
		AddMonster (59079 , 1 , 220 , 91 , 34 , 0 )
		AddMonster (59079 , 1 , 220 , 93 , 36 , 0 )
		AddMonster (59079 , 1 , 220 , 89 , 35 , 0 )
		AddMonster (59079 , 1 , 220 , 91 , 38 , 0 )
		
		AddMonster (59043 , 1 , 234 , 49 , 93 , 0 )
		AddMonster (59043 , 1 , 234 , 49 , 91 , 0 )
		AddMonster (59043 , 1 , 234 , 46 , 91 , 0 )
		AddMonster (59043 , 1 , 234 , 46 , 93 , 0 )
		AddMonster (59043 , 1 , 234 , 48 , 81 , 0 )
		AddMonster (59043 , 1 , 234 , 47 , 79 , 0 )
		AddMonster (59043 , 1 , 234 , 45 , 81 , 0 )
		AddMonster (59043 , 1 , 234 , 46 , 82 , 0 )
		AddMonster (59043 , 1 , 234 , 36 , 78 , 0 )
		AddMonster (59043 , 1 , 234 , 34 , 78 , 0 )
		AddMonster (59043 , 1 , 234 , 34 , 81 , 0 )
		AddMonster (59043 , 1 , 234 , 36 , 81 , 0 )
		
		AddMonster (59078 , 1 , 220 , 34 , 89 , 0 )
		AddMonster (59078 , 1 , 220 , 34 , 91 , 0 )
		AddMonster (59078 , 1 , 220 , 38 , 93 , 0 )
		AddMonster (59078 , 1 , 220 , 36 , 93 , 0 )
		
	}

	function OnEnd(){
		PlaySoundToMap(234, "..\\Data\\Audio\\UI\\MainStory.wav")
		$a = GetBattleWinner(234)
		if $a == 1
			BC( "screen", "server", -1, "Mani is victorious!" )
			BC( "chat", "server", -1, "Mani is victorious!" )
		endif
		if $a == 2
			BC( "screen", "server", -1, "Sol is victorious!" )
			BC( "chat", "server", -1, "Sol is victorious!" )
		endif
		//??????????
		AddLoserCredit( 234 , 10, 20 )
		//??????????
		AddWinnerCredit( 234 , 10 , 50 )
		BC( "screen", "server", -1, "Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
		BC( "chat", "server", -1, "Talk to Mercuriffy to exchange Glory for Medals of Victory. You will also receive Ancient Ruins Reputation." )
	}