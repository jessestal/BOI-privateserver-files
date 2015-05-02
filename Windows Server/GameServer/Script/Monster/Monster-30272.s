 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/27
	//		Author:???
	//		TaskName:Monster-30271.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		
		$task =  IsTaskAccept( -1, 1750 )
		$a = GetPlayerInfo( -1, "item", 12811 )
		
		if $task != 0
			//BC( "screen", "player", -1, "GUID:07951000000" )
			return
		endif
		
		if $a == 0
			DropMonsterItems( -1, 90151 )
			return
		else
			BC( "screen", "player", -1, "You already have a Mysterious Blue Energy Shard." )
		endif
	}