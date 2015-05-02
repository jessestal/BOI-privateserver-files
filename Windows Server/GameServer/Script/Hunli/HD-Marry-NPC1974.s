	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		AddLoveExp/08/10
	//		Author:???
	//		TaskName:HD-Marry-NPC1974.s
	//		TaskID:??2?,???
	//
	//****************************************
	

	function OnRequest(){
	
		//????????,??
		$result = IsCeremonyOn(2)
		if $result == 0
			DisableNpcOption(0)
		endif
	}
	
	//???
	//????3724,?????????????
	function OnOption0(){
		
		$day = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 3724 )
		if $day != $myday
			//???????,????
			$nullitem = GetPlayerInfo(-1, "nullitem", 0)
			if $nullitem < 2
				BC( "screen", "player", -1, "Unable to get rewards. Please keep at least 2 bag slots empty." )
				return
			else
				AddPlayerInfo( -1 , "item" , 52012 , 20 )
				AddPlayerInfo( -1 , "item" , 52013 , 20 )
				SetPlayerVar( -1 , 3724 , $day )
			endif
		else
			BC( "dialogbox" , "player" , -1 , "Wedding Pack can be received once only in a day." )
		endif
	
	}