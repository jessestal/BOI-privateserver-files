	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/18
	//		Author:???
	//		TaskName:AV-NPC-1846-door.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$Status01 = IsExistStatus( -1, 10597 )
		if $Status01 != 0
			BC( "screen", "player", -1, "You need to activate a device in room III." )
			return
		endif
		
		FlyToMap( -1, 160, 50, 46 )
	}