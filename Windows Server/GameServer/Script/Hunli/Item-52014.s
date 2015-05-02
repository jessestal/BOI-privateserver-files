	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/18
	//		Author:???
	//		TaskName:Item-52014.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 8
			BC( "screen", "player", -1, "Sorry, please keep at least 8 bag slots empty." )
			return	
		endif
		
		$result = SubPlayerInfo( -1 , "item" , 52014 , 1 )
		
		//36289	??????(?)	36297	????	52011	????	60?	52002	????	60?
		//36290	??????(?)	36298	????	61053	???????	60?	52010	?????	1?
		if $result == 0
			AddPlayerInfo( -1, "item" , 36289 , 1 )
			AddPlayerInfo( -1, "item" , 36290 , 1 )
			AddPlayerInfo( -1, "item" , 36297 , 1 )
			AddPlayerInfo( -1, "item" , 36298 , 1 )
			AddPlayerInfo( -1, "item" , 52011 , 60 )
			AddPlayerInfo( -1, "item" , 61053 , 60 )
			AddPlayerInfo( -1, "item" , 52002 , 60 )
			AddPlayerInfo( -1, "item" , 52010 , 1 )
		endif
	}