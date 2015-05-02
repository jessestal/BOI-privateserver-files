	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-167-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Status01 = IsExistStatus( -1, 10659 )
		if $Status01 != 0
			BC( "dialogbox", "player", -1, "You haven't activated a device in Room IX" )
			return
		endif
		FlyToMap( -1, 161, 50, 83 )
	}