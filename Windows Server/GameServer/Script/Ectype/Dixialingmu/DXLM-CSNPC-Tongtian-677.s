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
		$ectype_id = GetEctypeID(-1, 479)
		FlyToMap(-1, $ectype_id, 54, 55 )
		BC( "screen", "player", -1, "Arrived to the upper level." )
		
		//????NPC??id??????
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid, "mapid")
		if $mapid >= 14851
			if $mapid <= 15050
				$ectype_id = GetEctypeID(-1, 479)
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
//		
//		$ectype_id = GetEctypeID(-1, 479)
//		FlyToMap(-1, $ectype_id, 54, 55 )
//		BC( "screen", "player", -1, "Arrived to the upper level." )
	
}	

