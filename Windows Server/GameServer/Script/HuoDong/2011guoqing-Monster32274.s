	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/22
	//		Author:??
	//		TaskName:2011guoqing-Monster32274.s
	//		TaskID:??????-lv115
	//****************************************

	function OnDead(){

		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )

		$day1 = GetGlobalVar( 54 )
		$day2 = GetGlobalVar( 55 )
		
		if $teamplayer1_id != -1
			$lv1 = GetPlayerInfo( $teamplayer1_id , "level" )
			if $lv1 >= 100
				if $lv1 <= 130
					$nowday = GetSystemTime( "yday" )
					if $day1 < $nowday
						$n1 = RandomNumber( 1, 1000 )
						if $n1 <= 30
							DropMonsterItems( $teamplayer1_id, 90148 )
							SetGlobalVar( 54, $nowday )
							$day1 = $nowday
							#name = GetPlayerInfo( $teamplayer1_id, "name" )
							BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
							BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
						else
							if $day2 < $nowday
								$n1 = RandomNumber( 1, 1000 )
								if $n1 <= 15
									DropMonsterItems( $teamplayer1_id, 90149 )
									SetGlobalVar( 55, $nowday )
									$day2 = $nowday
									#name = GetPlayerInfo( $teamplayer1_id, "name" )
									BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
									BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
								else
									DropMonsterItems( $teamplayer1_id, 90147 )
								endif
							else
								DropMonsterItems( $teamplayer1_id, 90147 )
							endif
						endif
					else
						DropMonsterItems( $teamplayer1_id, 90147 )
					endif
				else
					DropMonsterItems( $teamplayer1_id, 90150 )
				endif
			else
				DropMonsterItems( $teamplayer1_id, 90150 )
			endif
		endif

		if $teamplayer2_id != -1
			$lv2 = GetPlayerInfo( $teamplayer2_id , "level" )
			if $lv2 >= 100
				if $lv2 <= 130
					$nowday = GetSystemTime( "yday" )
					if $day1 < $nowday
						$n1 = RandomNumber( 1, 1000 )
						if $n1 <= 30
							DropMonsterItems( $teamplayer2_id, 90148 )
							SetGlobalVar( 54, $nowday )
							$day1 = $nowday
							#name = GetPlayerInfo( $teamplayer2_id, "name" )
							BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
							BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
						else
							if $day2 < $nowday
								$n1 = RandomNumber( 1, 1000 )
								if $n1 <= 15
									DropMonsterItems( $teamplayer2_id, 90149 )
									SetGlobalVar( 55, $nowday )
									$day2 = $nowday
									#name = GetPlayerInfo( $teamplayer2_id, "name" )
									BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
									BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
								else
									DropMonsterItems( $teamplayer2_id, 90147 )
								endif
							else
								DropMonsterItems( $teamplayer2_id, 90147 )
							endif
						endif
					else
						DropMonsterItems( $teamplayer2_id, 90147 )
					endif
				else
					DropMonsterItems( $teamplayer2_id, 90150 )
				endif
			else
				DropMonsterItems( $teamplayer2_id, 90150 )
			endif
		endif
		
		if $teamplayer3_id != -1
			$lv3 = GetPlayerInfo( $teamplayer3_id , "level" )
			if $lv3 >= 100
				if $lv3 <= 130
					$nowday = GetSystemTime( "yday" )
					if $day1 < $nowday
						$n1 = RandomNumber( 1, 1000 )
						if $n1 <= 30
							DropMonsterItems( $teamplayer3_id, 90148 )
							SetGlobalVar( 54, $nowday )
							$day1 = $nowday
							#name = GetPlayerInfo( $teamplayer3_id, "name" )
							BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
							BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
						else
							if $day2 < $nowday
								$n1 = RandomNumber( 1, 1000 )
								if $n1 <= 15
									DropMonsterItems( $teamplayer3_id, 90149 )
									SetGlobalVar( 55, $nowday )
									$day2 = $nowday
									#name = GetPlayerInfo( $teamplayer3_id, "name" )
									BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
									BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
								else
									DropMonsterItems( $teamplayer3_id, 90147 )
								endif
							else
								DropMonsterItems( $teamplayer3_id, 90147 )
							endif
						endif
					else
						DropMonsterItems( $teamplayer3_id, 90147 )
					endif
				else
					DropMonsterItems( $teamplayer3_id, 90150 )
				endif
			else
				DropMonsterItems( $teamplayer3_id, 90150 )
			endif
		endif
		
		if $teamplayer4_id != -1
			$lv4 = GetPlayerInfo( $teamplayer4_id , "level" )
			if $lv4 >= 100
				if $lv4 <= 130
					$nowday = GetSystemTime( "yday" )
					if $day1 < $nowday
						$n1 = RandomNumber( 1, 1000 )
						if $n1 <= 30
							DropMonsterItems( $teamplayer4_id, 90148 )
							SetGlobalVar( 54, $nowday )
							$day1 = $nowday
							#name = GetPlayerInfo( $teamplayer4_id, "name" )
							BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
							BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
						else
							if $day2 < $nowday
								$n1 = RandomNumber( 1, 1000 )
								if $n1 <= 15
									DropMonsterItems( $teamplayer4_id, 90149 )
									SetGlobalVar( 55, $nowday )
									$day2 = $nowday
									#name = GetPlayerInfo( $teamplayer4_id, "name" )
									BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
									BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
								else
									DropMonsterItems( $teamplayer4_id, 90147 )
								endif
							else
								DropMonsterItems( $teamplayer4_id, 90147 )
							endif
						endif
					else
						DropMonsterItems( $teamplayer4_id, 90147 )
					endif
				else
					DropMonsterItems( $teamplayer4_id, 90150 )
				endif
			else
				DropMonsterItems( $teamplayer4_id, 90150 )
			endif
		endif
		
		if $teamplayer5_id != -1
			$lv5 = GetPlayerInfo( $teamplayer5_id , "level" )
			if $lv5 >= 100
				if $lv5 <= 130
					$nowday = GetSystemTime( "yday" )
					if $day1 < $nowday
						$n1 = RandomNumber( 1, 1000 )
						if $n1 <= 30
							DropMonsterItems( $teamplayer5_id, 90148 )
							SetGlobalVar( 54, $nowday )
							$day1 = $nowday
							#name = GetPlayerInfo( $teamplayer5_id, "name" )
							BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
							BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
						else
							if $day2 < $nowday
								$n1 = RandomNumber( 1, 1000 )
								if $n1 <= 15
									DropMonsterItems( $teamplayer5_id, 90149 )
									SetGlobalVar( 55, $nowday )
									$day2 = $nowday
									#name = GetPlayerInfo( $teamplayer5_id, "name" )
									BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
									BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
								else
									DropMonsterItems( $teamplayer5_id, 90147 )
								endif
							else
								DropMonsterItems( $teamplayer5_id, 90147 )
							endif
						endif
					else
						DropMonsterItems( $teamplayer5_id, 90147 )
					endif
				else
					DropMonsterItems( $teamplayer5_id, 90150 )
				endif
			else
				DropMonsterItems( $teamplayer5_id, 90150 )
			endif
		endif
		
		if $teamplayer6_id != -1
			$lv6 = GetPlayerInfo( $teamplayer6_id , "level" )
			if $lv6 >= 100
				if $lv6 <= 130
					$nowday = GetSystemTime( "yday" )
					if $day1 < $nowday
						$n1 = RandomNumber( 1, 1000 )
						if $n1 <= 30
							DropMonsterItems( $teamplayer6_id, 90148 )
							SetGlobalVar( 54, $nowday )
							$day1 = $nowday
							#name = GetPlayerInfo( $teamplayer6_id, "name" )
							BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
							BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found a LV4 Gem Coin!" )
						else
							if $day2 < $nowday
								$n1 = RandomNumber( 1, 1000 )
								if $n1 <= 15
									DropMonsterItems( $teamplayer6_id, 90149 )
									SetGlobalVar( 55, $nowday )
									$day2 = $nowday
									#name = GetPlayerInfo( $teamplayer6_id, "name" )
									BC( "screen", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
									BC( "chat", "server", -1, "Congratulations! " , #name , " has killed Fradon, and found Advanced Flamestrike!" )
								else
									DropMonsterItems( $teamplayer6_id, 90147 )
								endif
							else
								DropMonsterItems( $teamplayer6_id, 90147 )
							endif
						endif
					else
						DropMonsterItems( $teamplayer6_id, 90147 )
					endif
				else
					DropMonsterItems( $teamplayer6_id, 90150 )
				endif
			else
				DropMonsterItems( $teamplayer6_id, 90150 )
			endif
		endif

	}


