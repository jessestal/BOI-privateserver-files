	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???478????NPC??
	//		TaskID:DXLM-NPC-lingyun-579.s
	//
	//****************************************

	function OnRequest(){
		
		$ectype_id = GetEctypeID(-1, 478)
		$choice = GetEctypeVar($ectype_id,0)
		if $choice == 2
			DisableNpcOption(0)
		endif
		
	}

	function OnOption0(){

		$ectype_id = GetEctypeID(-1, 478)
		$choice = GetEctypeVar($ectype_id,0)
		$is = GetEctypeVar(-1, 7)
		
		if $is == 1
			BC( "dialogbox", "player", -1, "It is very dangerous inside the tomb. We'd better be cautious." )
			return
		endif
		
		if $choice != 0
			if $choice != 1
				BC( "dialogbox", "player", -1, "It is heard that this tomb has numerous Burial Artifacts, but why does it look so shabby?" )
				return
			endif
		endif
		//??????????,????,???????
		$headerID = GetTeamHeaderID( -1 )
		$playerid = GetPlayerID()
		if $playerid != $headerID
			BC( "dialogbox", "player", -1, "You are not the Party Leader." )
			return
		endif
	
		//??1??
		$revaluet = OpenMask(1, $ectype_id)
		
		if $revaluet == 0	
			SetEctypeVar($ectype_id,0,1)
			
			$Mem1 = GetTeamMemberID( -1, 0 )
			$Mem2 = GetTeamMemberID( -1, 1 )
			$Mem3 = GetTeamMemberID( -1, 2 )
			$Mem4 = GetTeamMemberID( -1, 3 )
			$Mem5 = GetTeamMemberID( -1, 4 )
			$Mem6 = GetTeamMemberID( -1, 5 )
			
			AddMonster( 51771, 2, $ectype_id, 31, 93, 2)
			AddMonster( 51771, 2, $ectype_id, 31, 91, 2)
			AddMonster( 51771, 2, $ectype_id, 32, 89, 2)
			AddMonster( 51771, 2, $ectype_id, 32, 87, 2)
			AddMonster( 51771, 2, $ectype_id, 31, 85, 2)
			AddMonster( 51771, 2, $ectype_id, 31, 83, 2)
			AddMonster( 51772, 2, $ectype_id, 19, 73, 2)
			AddMonster( 51772, 2, $ectype_id, 21, 73, 2)
			AddMonster( 51772, 2, $ectype_id, 22, 75, 2)
			AddMonster( 51772, 2, $ectype_id, 24, 73, 2)
			AddMonster( 51772, 2, $ectype_id, 25, 74, 2)
			AddMonster( 51771, 2, $ectype_id, 32, 78, 2)
			AddMonster( 51771, 2, $ectype_id, 31, 74, 2)
			AddMonster( 51772, 2, $ectype_id, 27, 73, 2)
			AddNPC(580, $ectype_id)
			BC( "screen", "map", $ectype_id, "There are many dangerous places inside the tomb. You should always be careful!" )
			
			StartEctypeTimer(-1 , 3)
			
			SetEctypeVar(-1, 7, 1)
			
		endif

}


//	function OnOption1(){
//		
//		BC( "dialogbox", "player", -1 , "GUID:03931000004" )
//		
//	}