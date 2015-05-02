    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/10
	//		Author:???
	//		TaskName:Monster-52031.s
	//		TaskID:????2
	//****************************************
	
	function OnDead(){
		
		//100%???
		AddPlayerInfo( -1 , "exp" , 1000 )
		BC( "screen", "player", -1 , "You feel happy for eating a sweet candy, increasing EXP by 1000 points!" )
		
		//???????,????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 1
			BC( "screen", "player", -1, "Unable to get rewards. Please keep at least 1 bag slot empty." )
		else
			AddPlayerInfo( -1 , "item" , 6810 , 1 )
		endif
		
		//??
		PlayEffect( -1  , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_05.ini" )

	}