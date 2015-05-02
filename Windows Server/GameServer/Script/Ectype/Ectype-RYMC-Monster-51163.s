   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-RYMC-Monster-51163.s
	//		TaskID:??????
	//****************************************
	
	function OnDead(){

		$ectype_ID = GetEctypeID(-1 ,223)
		//????????
		SetEctypeVar(-1 ,1 ,1)
		$is_black_kill = GetEctypeVar(-1 ,2)
		//????????,?????
		if $is_black_kill == 0
			StartEctypeTimer(-1 , 223 ,5)
			BC("screen", "map", $ectype_ID, "Iceoper: Oroine has been killed! I must plan my escape...")
		else
			AddMonster( 51192, 1,$ectype_ID, 64, 64, 0 )
			BC("screen", "map", $ectype_ID, "Razill's Treasure Chest has appeared in the center of Lava Heights.")
			AddNPC(1923, $ectype_ID)
			AddNPC(1924, $ectype_ID)
			//?????,????
			BC("screen", "map", $ectype_ID, "Razill: You think you can prevent me from reviving Efreet?! I'd like to see you try!")
			$ectype_type = GetEctypeVar(-1 ,0)
			if $ectype_type == 0
				AddMonster( 51153, 30,$ectype_ID, 50, 52, 20 )
				AddMonster( 51154, 10,$ectype_ID, 39, 37, 15 )
				AddMonster( 51162, 1,$ectype_ID, 34, 35, 0 )
			
			else
				if $ectype_type == 2
					AddMonster( 51463, 30,$ectype_ID, 50, 52, 20 )
					AddMonster( 51464, 10,$ectype_ID, 39, 37, 15 )
					AddMonster( 51472, 1,$ectype_ID, 34, 35, 0 )
				else
					AddMonster( 51173, 30,$ectype_ID, 50, 52, 20 )
					AddMonster( 51174, 10,$ectype_ID, 39, 37, 15 )
					AddMonster( 51182, 1,$ectype_ID, 34, 35, 0 )
				endif
				
			endif
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
		

