	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-148-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		
		$Status01 = IsExistStatus( -1, 10599 )
		if $Status01 != 0
			BC( "dialogbox", "player", -1, "Acquire Demigod's Blessing in room 5 before you enter." )
			return
		endif
		FlyToMap( -1, 161, 50, 46 )
		
	}