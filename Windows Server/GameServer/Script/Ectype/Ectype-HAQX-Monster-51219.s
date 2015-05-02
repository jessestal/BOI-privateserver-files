
  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/26
	//		Author: ÕÅÎÄÓî
	//		TaskName:Ectype-HAQX-Monster-51219.s
	//		TaskID:ÍöÁé¹íºó-ËÀÍö
	//****************************************

	function OnDead(){

		$mapid = GetPlayerInfo( -1 , mapid )

		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			if $teamplayer_id != -1
				//ÃüÔË¿¨ÅÆµôÂä		
				$ishave = HaveTarot($teamplayer_id,12541)
				if $ishave == 0
					$oldtime = GetPlayerVar( $teamplayer_id, 4092 )
					$yday = GetSystemTime( "yday" )
					if $oldtime <= 0
						SetPlayerVar( $teamplayer_id, 3545 ,1)
					else
						$chazhi = $yday - $oldtime
						if $chazhi < 1
							SetPlayerVar( $teamplayer_id, 3545 ,1)
						else
							$plus = GetPlayerVar( $teamplayer_id, 3545 )
							$plus = $plus + 2
							$plus = $plus - $chazhi
							if $plus > 0
								SetPlayerVar( $teamplayer_id, 3545 ,$plus)
							else
								SetPlayerVar( $teamplayer_id, 3545 ,1)
							endif
						endif
					endif
					$plus = GetPlayerVar( $teamplayer_id, 3545 )
					if $plus > 30
						AddTarotCard($teamplayer_id,12541)
					endif
					SetPlayerVar( $teamplayer_id, 4092, $yday)
				endif
				//ÃüÔË¿¨ÅÆµôÂä
			endif
		endwhile

	}
