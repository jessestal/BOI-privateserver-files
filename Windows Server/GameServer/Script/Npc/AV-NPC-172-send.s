	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-172-send.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Item = GetPlayerInfo( -1, "item", 12560 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "You don't have Transform Chip." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12560, 1 )
		if $SubItem != 0
			return
		endif
		
		FlyToMap( -1, 161, 84, 85 )
	}