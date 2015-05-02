 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-HAQX-Monster-51217.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		

		$ectype_ID = GetEctypeID(-1 ,166)
		
		if $ectype_ID > 0
			StartEctypeTimer($ectype_ID ,1)
			SetEctypeVar($ectype_ID , 3, 1)
			BC("screen", "map", $ectype_ID, "All pillar guardians have been killed. Undead Lord Mour will appear soon.")
		
			//----------???
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )		
			
			$team_level = GetEctypeVar($ectype_ID ,110)
			
			
			if $team_level < 45
				$drop_id = 90010
			endif
			
			if $team_level < 60
				if $team_level >= 45
					$drop_id = 90011
				endif	
			endif
			
			if $team_level < 75
				if $team_level >= 60
					$drop_id = 90012
				endif	
			endif
				
			if $team_level < 90
				if $team_level >= 75
					$drop_id = 90013
				endif	
			endif	
				
			
			if $team_level >= 90
				$drop_id = 90014
			endif	

			
			if $teamplayer1_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer1_id )
				if $len <= 20
					DropMonsterItems($teamplayer1_id, $drop_id )		
				endif
			endif
			if $teamplayer2_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer2_id )
				if $len <= 20
					DropMonsterItems($teamplayer2_id, $drop_id )
				endif
			endif
			if $teamplayer3_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer3_id )
				if $len <= 20
					DropMonsterItems($teamplayer3_id, $drop_id )
				endif
			endif
			if $teamplayer4_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer4_id )
				if $len <= 20
					DropMonsterItems($teamplayer4_id, $drop_id )
				endif
			endif
			if $teamplayer5_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer5_id )
				if $len <= 20
					DropMonsterItems($teamplayer5_id, $drop_id )
				endif
			endif
			if $teamplayer6_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer6_id )
				if $len <= 20
					DropMonsterItems($teamplayer6_id, $drop_id )
				endif
			endif

		endif
		
	}
		