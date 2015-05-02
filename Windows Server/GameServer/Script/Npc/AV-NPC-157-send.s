	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-157-send.s
	//		TaskID:?????(13)
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
	
		$PlayerVar = GetPlayerVar( -1, 3688 )
		if $PlayerVar != 1
			BC( "screen", "player", -1, "You need to activate a device before you can pass." )
			return
		endif

		FlyToMap( -1, 161, 55, 50 )
		SetPlayerVar( -1, 3688, 0 )
		
	}