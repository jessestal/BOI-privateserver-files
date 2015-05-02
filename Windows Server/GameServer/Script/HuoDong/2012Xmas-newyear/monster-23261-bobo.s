 //****************************  
 //  Copyright£ºPERFECT WORLD  
 //  Modified£º2012  
 //  Author£ººú±óÌÎ  
 //  TaskName£º  
 //****************************  
 
 
	function OnDead(){
		
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		$monthadd = $Now_Month * 100
		$Time = $monthadd + $Now_Mday
		
		if $Now_Year == 2012
			if $Time >= 1224
				if $Time <= 1227
					$playerid = GetPlayerID()
					$dropitemD = 90229
					$Cid = 0
					while $Cid < 6
						$teamplayer_id = GetTeamMemberID($playerid,$Cid)
						if $teamplayer_id > 0
							$lenD = GetPlayerDistance($playerid,$teamplayer_id )
							if $lenD < 25
								$Luck1 = RandomNumber(1,100)
								if $Luck1 <= 100
									DropMonsterItems($teamplayer_id,$dropitemD)
								endif					
							endif
						endif
						$Cid = $Cid + 1
					endwhile
				endif
			endif
		endif

		
	}