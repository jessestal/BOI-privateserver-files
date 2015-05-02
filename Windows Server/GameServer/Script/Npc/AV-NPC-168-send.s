	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-168-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Status01 = IsExistStatus( -1, 10660 )
		if $Status01 != 0
			BC( "dialogbox", "player", -1, "Only a Barbarian may pass." )
			return
		endif
		FlyToMap( -1, 161, 64, 86 )
	}