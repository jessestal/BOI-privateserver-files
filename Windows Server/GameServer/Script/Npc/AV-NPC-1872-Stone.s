	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/23
	//		Author:???
	//		TaskName:AV-NPC-1872-Stone.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
		$PlayerVar = GetPlayerVar( -1, 3796 )
		if $PlayerVar != 1
			DisableNpcOption(0)
		endif
	
	}
	
	
	function OnOption0(){
		$PlayerVar = GetPlayerVar( -1, 3796 )
		if $PlayerVar != 1
			BC( "dialogbox", "player", -1, "You haven't activated the teleport stone yet." )
			return
		endif
		
		FlyToMap( -1, 160, 32, 33 )
	}