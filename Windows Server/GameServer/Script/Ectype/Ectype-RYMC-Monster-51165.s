 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-RYMC-Monster-51165.s
	//		TaskID:????????
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID(-1 ,223)
		AddNPC(1925 , $ectype_ID)
		BC("screen", "map", $ectype_ID, "Efreet Sultan: Nooo! I refuse to return to the Abyss! Noooooo!")
		
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
		