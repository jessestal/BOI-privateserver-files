    	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/16
	//		Author:???
	//		TaskName:AV-Monster32114.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$Status01 = IsExistStatus( -1, 10571 )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		if $Status01 != 0
			AddMonster( 32116, 1, 188, $playerX, $playerY, 1 )
			return
		endif
		
		DropMonsterItems( -1, 60094 )
		
		$ServerVar = GetServerVar( 64 )
		$ServerVarUp = $ServerVar + 1
		
		SetServerVar( 64, $ServerVarUp )
		
		$ServerVarRes = GetServerVar( 64 )
		if $ServerVarRes == 800
			BC("screen", "map", 188, "You feel a powerful shock from the core of Cave of Haze. The evil stench creeps in the air. The dreadful wraith is awaking!")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			return
		endif
		if $ServerVarRes == 1000
			AddMonster( 32126, 1, 188, 58, 67, 0 )
			BC("screen", "map", 188, "Mutated Undead Soldiers have been awaken in the center of Cave of Haze!")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			return
		endif
		
	}