	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/17
	//		Author:???
	//		TaskName:AV-NPC-110-Organs11.s
	//		TaskID:????11
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Status00 = IsExistStatus( -1, 10696 )
		if $Status00 == 0
			FlyToMap( -1, 188, 64, 55 )
			return
		endif
		
		$Status01 = IsExistStatus( -1, 10564 )
		$Status02 = IsExistStatus( -1, 10565 )
		$Status03 = IsExistStatus( -1, 10566 )
		if $Status01 != 0
			BC( "dialogbox", "player", -1, "Insufficient energy to teleport. All the three Spell Pillars need to be activated!" )
			return
		endif
		if $Status02 != 0
			BC( "dialogbox", "player", -1, "Insufficient energy to teleport. All the three Spell Pillars need to be activated!" )
			return
		endif
		if $Status03 != 0
			BC( "dialogbox", "player", -1, "Insufficient energy to teleport. All the three Spell Pillars need to be activated!" )
			return
		endif
		
		FlyToMap( -1, 188, 64, 55 )
		AddStatus( -1, 10696, 1 )
		
	}