    	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/16
	//		Author:???
	//		TaskName:AV-Monster32115-32117.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$Status01 = IsExistStatus( -1, 10572 )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		if $Status01 != 0
			AddMonster( 32117, 1, 188, $playerX, $playerY, 1 )
			return
		endif
		
		DropMonsterItems( -1, 60095 )
		
		$ServerVar = GetServerVar( 65 )
		$ServerVarUp = $ServerVar + 1
		
		SetServerVar( 65, $ServerVarUp )
		
		$ServerVarRes = GetServerVar( 65 )
		if $ServerVarRes == 800
			BC("screen", "map", 188, "Alien Beast's blood has been gathered together. The shadow of death is masking Cave of Haze.")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			return
		endif
		if $ServerVarRes == 1000
			AddMonster( 32127, 1, 188, 61, 65, 0 )
			BC("screen", "map", 188, "Alien Beast's death has enraged a greater fiend. At the center of Cave of Haze, a furious Mutated Alien Beast has showed up.")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			return
		endif
	}