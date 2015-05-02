   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-RYMC-Monster-51161.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		

		$ectype_ID = GetEctypeID(-1 ,223)
		
		if $ectype_ID > 0
			AddNPC(1921, $ectype_ID)
			AddNPC(1922, $ectype_ID)
			$ectype_type = GetEctypeVar(-1 ,0)
			if $ectype_type == 0
				AddMonster( 51151, 30,$ectype_ID, 42, 85, 20 )
				AddMonster( 51152, 30,$ectype_ID, 85, 47, 20 )
				$white_id = AddSingleMonster( 51163,$ectype_ID, 31, 92, 1 )
				$black_id = AddSingleMonster( 51164, $ectype_ID, 91, 36, 1 )
			else
				if $ectype_type == 2
					
					AddMonster( 51461, 30,$ectype_ID, 42, 85, 20 )
					AddMonster( 51462, 30,$ectype_ID, 85, 47, 20 )
					$white_id = AddSingleMonster( 51473, $ectype_ID, 31, 92, 1 )
					$black_id = AddSingleMonster( 51474, $ectype_ID, 91, 36, 1 )
				
				else
				
					AddMonster( 51171, 30,$ectype_ID, 42, 85, 20 )
					AddMonster( 51172, 30,$ectype_ID, 85, 47, 20 )
					$white_id = AddSingleMonster( 51183, $ectype_ID, 31, 92, 1 )
					$black_id = AddSingleMonster( 51184, $ectype_ID, 91, 36, 1 )
					
				endif
			endif
			//????????ID
			SetEctypeVar(-1 ,112 , $white_id)
			SetEctypeVar(-1 ,113 , $black_id)
			BC("screen", "map", $ectype_ID, "A portal has appeared.")
			BC("screen", "map", $ectype_ID, "Razill: Egoniz has been killed?! Oroine... Iceoper... so help you if you fail me...")
		endif
		
		$random = RandomNumber(0,100)
		if $random < 20
				$playerID = GetPlayerID()
					if $playerID < 0
						return
					endif
				
				$teamD_count = 0
				$Cid = 0
				while $Cid < 6
					$teamplayer_id = GetTeamMemberID($playerID,$Cid)
					if $teamplayer_id > 0
					$lenD = GetPlayerDistance($playerID,$teamplayer_id )
						if $lenD < 9999
							$teamD_count = $teamD_count + 1
						endif
					endif
					$Cid = $Cid + 1
				endwhile
				
				$playerID = GetPlayerID()
				$dropitemD = 90162
				$maskD = 60 / $teamD_count
				$maskD2 = $maskD
				$randbuff = RandomNumber( 0 , 59 )
				$Cid = 0
				while $Cid < 6
					$teamplayer_id = GetTeamMemberID($playerID,$Cid)
					if $teamplayer_id > 0
						$lenD = GetPlayerDistance($playerID,$teamplayer_id )
						if $lenD < 9999
		  				if $randbuff < $maskD2
		  					DropMonsterItems($teamplayer_id,$dropitemD)
		  					$maskD2 = -999
		  				else
		  					$maskD2 = $maskD2 + $maskD
		  				endif
		  			endif
					endif
					$Cid = $Cid + 1
				endwhile
		endif
	}
		

