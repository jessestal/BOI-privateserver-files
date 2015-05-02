  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:GOW-small.s
	//		TaskID:??
	//
	//****************************************
	
	function OnDead(){
		
		$Ftalk = GetPlayerVar(-1,238)
		if $Ftalk == 0
			$buffo = IsExistStatus(-1 , 21601 )
			if $buffo != 0
				$today_time = GetSystemTime( "yday" )
				$player_time = GetPlayerVar( -1, 4031 )
				if $player_time == $today_time
					$Tdone = GetPlayerVar(-1,3536)
					if $Tdone == 0
						CancelTask ( -1 , 2621 )
						CancelTask ( -1 , 2622 )
						CancelTask ( -1 , 2623 )
						CancelTask ( -1 , 2624 )
						CancelTask ( -1 , 2629 )
						SubPlayerInfo( -1 , "item", 54090 , 1 )
						SubPlayerInfo( -1 , "item", 54091 , 1 )
						SubPlayerInfo( -1 , "item", 54092 , 1 )
						SubPlayerInfo( -1 , "item", 54093 , 1 )
						SubPlayerInfo( -1 , "item", 54094 , 1 )
						AddPlayerInfo( -1 , "item" , 54095 , 1 )
						SetPlayerVar(-1,238,1)
						BC( "messagebox", "player", -1, "You have not finished Arethusa's Request in time. You can only acquire Arethusa's Comfort!")
					endif
				endif
			endif
		endif
		
		$id1 = GetPlayerID()
		if $id1 <= 0
			return
		endif
		
		$buff = IsExistStatus(-1 , 21601 )
		if $buff != 0
			return
		endif
		
		$idaward = 0
		$rKind	=	GetGlobalVar(347 )
		
		if $rKind == 2
			$TorN = IsPlayerInTeam($id1)
			if $TorN == 0
				$i = 0
				while $i < 6
					$idaward = GetTeamMemberID( $id1 , $i )
					if $idaward > 0
						$buff2 = IsExistStatus($idaward , 21601 )
						if $buff2 == 0
							$len = GetPlayerDistance( $id1, $idaward )
							if $len < 30
								$Qnum = GetPlayerVar($idaward,4074)
								if $Qnum <= 0
									BC( "screen", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
								endif
								if $Qnum == 1
									SetPlayerVar( $idaward, 4074, 0)
									AddStatus( $idaward, 21601, 4 )
									SetPlayerVar($idaward,3536,1)
									BC( "messagebox", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
								endif
								if $Qnum > 1
									$Qnum = $Qnum - 1
									SetPlayerVar($idaward,4074,$Qnum)
									BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Soul Purification times!")
								endif
							endif
						endif
					endif
					$i = $i + 1
				endwhile
			else
				$idaward = $id1
				$Qnum = GetPlayerVar($idaward,4074)
				if $Qnum <= 0
					BC( "screen", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
				endif
				if $Qnum == 1
					SetPlayerVar( $idaward, 4074, 0)
					AddStatus( $idaward, 21601, 4 )
					SetPlayerVar($idaward,3536,1)
					BC( "messagebox", "player", $idaward, "You've completed Arethusa's Request. Make sure to collect your reward today!")
				endif
				if $Qnum > 1
					$Qnum = $Qnum - 1
					SetPlayerVar($idaward,4074,$Qnum)
					BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Soul Purification times!")
				endif
			endif
		endif
		
	}