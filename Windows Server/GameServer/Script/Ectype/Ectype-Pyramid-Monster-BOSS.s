  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-Pyramid-Monster-BOSS.s
	//		TaskID:BOSS
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 232 )	
		
		$ectype_type = GetEctypeVar( -1, 119 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 119, $ectype_type )
		
		$random = RandomNumber(0,100)
		if $random < 25
		
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
				$dropitemD = 90161
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
		
		$ectype_type = GetEctypeVar( -1, 119 )
		if $ectype_type < 4
			BC( "screen", "map", $ectype_ID, "Please move to the next room!" )
			return
		else
			BC( "screen", "map", $ectype_ID, "The instance is over. You can leave." )
			return
		endif
		
		
		
	}