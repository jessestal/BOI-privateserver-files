	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/18
	//		Author:???
	//		TaskName:Item-52021.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
		
		
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 8
			BC( "screen", "player", -1, "Sorry, please keep at least 8 bag slots empty." )
			return	
		endif
		
		$result = SubPlayerInfo( -1 , "item" , 52021 , 1 )
		
		//36289	??????(?)	36297	????	52007	????	20?	52002	????	60?
		//36290	??????(?)	36298	????	52001	???	20?	52010	?????	1?

		if $result == 0
			AddPlayerInfo( -1, "item" , 36289 , 1 )
			AddPlayerInfo( -1, "item" , 36290 , 1 )
			AddPlayerInfo( -1, "item" , 36297 , 1 )
			AddPlayerInfo( -1, "item" , 36298 , 1 )
			AddPlayerInfo( -1, "item" , 52007 , 20 )
			AddPlayerInfo( -1, "item" , 52001 , 20 )
			AddPlayerInfo( -1, "item" , 52002 , 60 )
			AddPlayerInfo( -1, "item" , 52010 , 1 )
		endif
	}