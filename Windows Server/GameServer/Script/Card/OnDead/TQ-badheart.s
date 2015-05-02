  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:GOW-badheart.s
	//		TaskID:?????-????
	//
	//****************************************
	
	function OnDead(){
		
		$Ftalk = GetPlayerVar(-1,239)
		if $Ftalk == 0
			$buffo = IsExistStatus(-1 , 21603 )
			if $buffo != 0
				$today_time = GetSystemTime( "yday" )
				$player_time = GetPlayerVar( -1, 4034 )
				if $player_time == $today_time
					$Tdone = GetPlayerVar(-1,3539)
					if $Tdone == 0
						CancelTask ( -1 , 2625 )
						CancelTask ( -1 , 2626 )
						CancelTask ( -1 , 2627 )
						CancelTask ( -1 , 2628 )
						SubPlayerInfo( -1 , "item", 54096 , 1 )
						AddPlayerInfo( -1 , "item" , 54097 , 1 )
						SetPlayerVar(-1,239,1)
						BC( "messagebox", "player", -1, "You have not completed Exile's Entreaty in time. You can only acquire Titan's Comfort!")
					endif
				endif
			endif
		endif
		
		$id1 = GetPlayerID()
		if $id1 <= 0
			return
		endif
		
		$buff = IsExistStatus(-1 , 21603 )
		if $buff != 0
			return
		endif
		
		$idaward = 0
		$rKind	=	GetGlobalVar(355 )
		
		if $rKind == 4
			$TorN = IsPlayerInTeam($id1)
			if $TorN == 0
				$i = 0
				while $i < 6
					$idaward = GetTeamMemberID( $id1 , $i )
					if $idaward > 0
						$buff2 = IsExistStatus($idaward , 21603 )
						if $buff2 == 0
							$len = GetPlayerDistance( $id1, $idaward )
							if $len < 30
								$Qnum = GetPlayerVar($idaward,4075)
								if $Qnum <= 0
									BC( "screen", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
								endif
								if $Qnum == 1
									SetPlayerVar( $idaward, 4075, 0)
									AddStatus( $idaward, 21603, 4 )
									SetPlayerVar($idaward,3539,1)
									BC( "messagebox", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
								endif
								if $Qnum > 1
									$Qnum = $Qnum - 1
									SetPlayerVar($idaward,4075,$Qnum)
									BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Inner Demon Dispeller times!")
								endif
							endif
						endif
					endif
					$i = $i + 1
				endwhile
			else
				$idaward = $id1
				$Qnum = GetPlayerVar($idaward,4075)
				if $Qnum <= 0
					BC( "screen", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
				endif
				if $Qnum == 1
					SetPlayerVar( $idaward, 4075, 0)
					AddStatus( $idaward, 21603, 4 )
					SetPlayerVar($idaward,3539,1)
					BC( "messagebox", "player", $idaward, "You've complete Exile's Entreaty. Make sure to collect your reward before Rullamas leaves!")
				endif
				if $Qnum > 1
					$Qnum = $Qnum - 1
					SetPlayerVar($idaward,4075,$Qnum)
					BC( "screen", "player", $idaward, "You need to complete the request",$Qnum, "Inner Demon Dispeller times!")
				endif
			endif
		endif
		
	}