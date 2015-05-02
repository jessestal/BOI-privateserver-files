	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2011/08/13
	//		Author£∫
	//		TaskName£∫±¶œ‰µÙ¬‰“π√˜÷È
	//		TaskID£∫
	//
	//****************************************
	
	function OnDead(){
	
		$ectype_id = GetEctypeID(-1, 478)
		
		$Mem1 = GetTeamMemberID( -1, 0 )
		$Mem2 = GetTeamMemberID( -1, 1 )
		$Mem3 = GetTeamMemberID( -1, 2 )
		$Mem4 = GetTeamMemberID( -1, 3 )
		$Mem5 = GetTeamMemberID( -1, 4 )
		$Mem6 = GetTeamMemberID( -1, 5 )
		
		$dropid = 51825
		
		if $Mem1 != -1
			$mapid = GetPlayerInfo($Mem1,"mapid")
			if $mapid == $ectype_id
				DropMonsterItems($Mem1,$dropid)
			endif
		endif
		if $Mem2 != -1
			$mapid = GetPlayerInfo($Mem2,"mapid")
			if $mapid == $ectype_id
				DropMonsterItems($Mem2,$dropid)
			endif
		endif
		if $Mem3 != -1
			$mapid = GetPlayerInfo($Mem3,"mapid")
			if $mapid == $ectype_id
				DropMonsterItems($Mem3,$dropid)
			endif
		endif
		if $Mem4 != -1
			$mapid = GetPlayerInfo($Mem4,"mapid")
			if $mapid == $ectype_id
				DropMonsterItems($Mem4,$dropid)
			endif
		endif
		if $Mem5 != -1
			$mapid = GetPlayerInfo($Mem5,"mapid")
			if $mapid == $ectype_id
				DropMonsterItems($Mem5,$dropid)
			endif
		endif
		if $Mem6 != -1
			$mapid = GetPlayerInfo($Mem6,"mapid")
			if $mapid == $ectype_id
				DropMonsterItems($Mem6,$dropid)
			endif
		endif
	
	} 