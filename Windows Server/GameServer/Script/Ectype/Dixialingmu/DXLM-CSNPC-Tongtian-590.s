	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???478??NPC??590
	//		TaskID:DXLM-NPC-tongtian-590.s
	//
	//****************************************

	function OnRequest(){
		
		$varr = GetPlayerVar(-1,3414)
		if $varr != 2 
			return
		endif
		
		$ectype_id = GetEctypeID(-1, 478)
		FlyToMap(-1, $ectype_id, 54, 55 )
		BC( "screen", "player", -1, "Arrived to the upper level." )

		//????NPC??id??????
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid, "mapid")
		if $mapid >= 14851
			if $mapid <= 14950
				$ectype_id = GetEctypeID(-1, 478)
				FlyToMap(-1, $ectype_id, 54, 55 )
				BC( "screen", "player", -1, "Arrived to the upper level." )
				return
			endif
		endif
	
		//?????????????????NPC??,????????
		FlyToMap(-1,146,52,35)
		BC("screen","player",-1,"You have triggered the NPC of Pangaea Catacomb outside the Pangaea Catacomb instance. If you have any problems, please contact customer service."


		
	}	
	
	function OnOption0(){
		
		$varr = GetPlayerVar(-1,3414)
		if $varr != 2 
			BC( "screen", "player", -1, "A mysterious force pushes you back. There's no point in going this direction." )
			return
		endif
		
		$ectype_id = GetEctypeID(-1, 478)
		FlyToMap(-1, $ectype_id, 54, 55 )
		BC( "screen", "player", -1, "Arrived to the upper level." )
	
}	