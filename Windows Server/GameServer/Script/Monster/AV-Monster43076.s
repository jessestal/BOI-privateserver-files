   	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/04/16
	//		Author£ºÁõÏþè´
	//		TaskName£ºAV-Monster43076.s
	//		TaskID£ºÄ¾Í°
	//****************************************
	
	function OnDead(){
		DropMonsterItems( -1, 43076 )
		
		$Playervar1 = GetPlayerVar( -1, 3236 )
		$PlayerTime = GetPlayerVar( -1, 3737 )
		$Time = GetSystemTime( "yday" )
		
		if $PlayerTime == $Time
			if $Playervar1 > 100
				return
			endif
			$Playervar1 = GetPlayerVar( -1, 3236 )
			$Playervar1 = $Playervar1 + 1
			SetPlayerVar( -1, 3236, $Playervar1 )
		else
			SetPlayerVar( -1, 3737, $Time )
			SetPlayerVar( -1, 3236, 1 )
		endif
		
		$Rand = RandomNumber( 1, 100 )
		if $Rand <= 30
			$Random = RandomNumber( 5000, 30000 )
			AddPlayerInfo( -1, "money", $Random )
		endif			
		
		return
		
	}
		