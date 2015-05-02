	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-156-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12553 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Stone of Curse." )
			return
		endif
		
		FlyToMap( -1, 161, 68, 54 )
		
	}