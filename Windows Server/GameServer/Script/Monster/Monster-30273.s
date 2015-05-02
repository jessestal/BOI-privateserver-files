 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/27
	//		Author:???
	//		TaskName:Monster-30273.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$task = IsTaskAccept( -1, 1750 )
		$a = GetPlayerInfo( -1, "item", 12812 )
		
		if $task != 0
			//BC( "screen", "player", -1, "GUID:07952000000" )
			return
		endif
		
		if $a == 0
			DropMonsterItems( -1, 90152 )
			return
		else
			BC( "screen", "player", -1, "You already have a Mysterious Blue Energy Shard." )
		endif
	}