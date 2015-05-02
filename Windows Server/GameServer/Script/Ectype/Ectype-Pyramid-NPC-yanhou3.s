	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/04
	//		Author:???
	//		TaskName:Ectype-Pyramid-NPC-yanhou3.s
	//		TaskID:????3
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1 ,232 )
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$ectype_type = GetEctypeVar( -1, 113 )
		if $ectype_type == 34
			SetEctypeVar( -1, 113, 4 )
			DeleteNPC( 1992, $ectype_ID )
			DeleteNPC( 1996, $ectype_ID )
			DeleteNPC( 2000, $ectype_ID )
			DeleteNPC( 2004, $ectype_ID )
			BC( "screen", "map", $ectype_ID, "Please don't touch me." )
			return
		else
			if $ectype_type == 3
				SetEctypeVar( -1, 113, 0 )
				DeleteNPC( 1992, $ectype_ID )
				DeleteNPC( 1996, $ectype_ID )
				DeleteNPC( 2000, $ectype_ID )
				DeleteNPC( 2004, $ectype_ID )
				BC( "screen", "map", $ectype_ID, "I told you to stop touching me! " )
				$playerX = GetPlayerInfo( -1, "mapx" )
				$playerY = GetPlayerInfo( -1, "mapy" )
				$ectype_var = GetEctypeVar( -1, 4 )
				if $ectype_var == 0
					AddMonster( 51490, 1, $ectype_ID, $playerX, $playerY , 1 )
				else
					AddMonster( 51221, 1, $ectype_ID, $playerX, $playerY , 1 )
				endif
				PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				return
			else
				BC( "screen", "map", $ectype_ID, "After touching the statue, a few gems drop off. Each one turns into a giant beetle when it hits the sand!" )
				$playerX = GetPlayerInfo( -1, "mapx" )
				$playerY = GetPlayerInfo( -1, "mapy" )
				$ectype_var = GetEctypeVar( -1, 4 )
				if $ectype_var == 0
					AddMonster( 51496, 8, $ectype_ID, $playerX, $playerY , 1 )
				else
					AddMonster( 51227, 8, $ectype_ID, $playerX, $playerY , 1 )
				endif
			endif
		endif
		
	}