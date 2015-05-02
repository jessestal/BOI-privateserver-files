	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1?681NPC??
	//		TaskID:DXLM1-NPC-Linxiao-681.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
	
		//????	??id 478, ???51821??91-0?1?, ??id ??51821 ??51820 ??51823
		$ectype_id = GetEctypeID(-1, 478)
		$is_51821 = GetEctypeVar(-1, 91)
		
			$headerID = GetTeamHeaderID( -1 )
			$playerid = GetPlayerID()
			if $playerid != $headerID
				BC( "dialogbox", "player", -1, "You are not the Party Leader." )
				return
			endif
			
		//??
		if $is_51821 == 1
			BC( "screen", "player", -1,"Maybe no one is alive...")
			return
		endif
		
		$choice = GetEctypeVar($ectype_id,0)
		if $choice != 0
			if $choice != 1
				BC( "dialogbox", "player", -1, "How did you come here?" )
				return
			endif
		endif
				
	
		//??
		AddMonsterByFloat(51821, 1, $ectype_id, 268, 186, 0)
		AddMonsterByFloat(51820, 1, $ectype_id, 266, 156, 0)
		AddMonsterByFloat(51820, 1, $ectype_id, 265, 158, 0)
		AddMonsterByFloat(51820, 1, $ectype_id, 280, 158, 0)
		AddMonsterByFloat(51823, 1, $ectype_id, 266, 168, 0)
		AddMonsterByFloat(51822, 1, $ectype_id, 282, 154, 0)
		AddMonsterByFloat(51822, 1, $ectype_id, 273, 153, 0)
		AddMonsterByFloat(51822, 1, $ectype_id, 273, 160, 0)
		AddMonsterByFloat(51822, 1, $ectype_id, 270, 163, 0)
		AddMonsterByFloat(51822, 1, $ectype_id, 267, 172, 0)
		AddMonsterByFloat(51822, 1, $ectype_id, 267, 177, 0)
		AddMonsterByFloat(51822, 1, $ectype_id, 270, 174, 0)
		
		BC( "screen", "player", -1, "Please help me to check whether any teammates are still alive, Strongie and Sheo...")
		SetEctypeVar(-1, 91, 1)
		SetEctypeVar( $ectype_id , 0, 4)
		
	}
	
	
	function OnOption1(){
		
		BC( "dialogbox", "player", -1 , "Scenario Option:\n\n1.Only the {#fff00000=Party leader#} can choose.\n2.After choosing, you {#fff00000=cannot choose any other scenario#}" )

	}