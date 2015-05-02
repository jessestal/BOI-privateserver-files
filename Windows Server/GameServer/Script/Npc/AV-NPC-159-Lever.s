	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-159-Lever.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		
		BC( "screen", "player", -1, "You are frozen." )
		AddStatus( -1, 10673, 1 )
		
	}