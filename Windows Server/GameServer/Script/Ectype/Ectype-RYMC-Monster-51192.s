   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-RYMC-Monster-51192.s
	//		TaskID:??????
	//****************************************
	
	function OnDead(){
		
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )		
		
		
		#name = GetPlayerInfo(-1 , "name")
		
		
		$ectype_ID = GetEctypeID(-1 ,223)
		$ectype_type = GetEctypeVar(-1 ,0)
		
		if $ectype_type != 1
			//?????????
			$drop_id = 60314
		else
			$drop_id = 60316
		endif
		
		BC("screen", "map", $ectype_ID, #name ," has opened Razill's Treasure Chest. All party members have received items. The portal to the King's Throne has appeared.")
		
		
		if $teamplayer1_id != -1
			$len = GetPlayerDistance( -1 , $teamplayer1_id )
			if $len <= 30
				DropMonsterItems($teamplayer1_id, $drop_id )		
			endif
		endif
		if $teamplayer2_id != -1
		
			$len = GetPlayerDistance( -1 , $teamplayer2_id )
			if $len <= 30
				DropMonsterItems($teamplayer2_id, $drop_id )
			endif
		
		endif
		
		if $teamplayer3_id != -1
			
			$len = GetPlayerDistance( -1 , $teamplayer3_id )
			if $len <= 30
				DropMonsterItems($teamplayer3_id, $drop_id )
			endif
			
		endif
		if $teamplayer4_id != -1
			
			$len = GetPlayerDistance( -1 , $teamplayer4_id )
			if $len <= 30
				DropMonsterItems($teamplayer4_id, $drop_id )
			endif
			
		endif
		if $teamplayer5_id != -1
			
			$len = GetPlayerDistance( -1 , $teamplayer5_id )
			if $len <= 30
				DropMonsterItems($teamplayer5_id, $drop_id )
			endif
		endif
		if $teamplayer6_id != -1
			
			$len = GetPlayerDistance( -1 , $teamplayer6_id )
			if $len <= 30
				DropMonsterItems($teamplayer6_id, $drop_id )
			endif
		endif
	}

		
	}