	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/4
	//		Author:??
	//		TaskName:Battle-NPC-paidui-2170.s
	//		TaskID: ??????NPC??
	//
	//****************************************
	
	
	function OnRequest(){
		
		$time_week = GetSystemTime( "week" )
		$time_hour = GetSystemTime( "hour" )
		
		if $time_week != 6
			DisableNpcOption(1)
		else
			DisableNpcOption(0)
		endif
		if $time_hour < 12
			DisableNpcOption(1) 
			DisableNpcOption(0)
		endif	
						
	}
	
	function OnOption0(){
		
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
				if $temp_level < 45
					//????45???,????
					BC( "dialogbox", "player", -1, "Someone is lower than LV45 in your team!" )
					return
				endif
		$size = GetTeamAreaSize(-1)
		
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif
		$n2 = 0
		while $n2 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n2 )
			$n2 = $n2 + 1
			if $teamplayer_id != -1
				ParticipateZoneWar( $teamplayer_id , 0 )
			endif	
		
		
	}	
	function OnOption1(){
										
		$a = 0
		while $a < 6
			$teamplayer_id = GetTeamMemberID( -1 , $a )
			$a = $a + 1
			if $teamplayer_id != -1
			$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
				if $temp_level < 75
					//????75???,????
					BC( "dialogbox", "player", -1, "Someone is lower than LV75 in your team!" )
					return
				endif
			endif
		$size = GetTeamAreaSize(-1)	
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif	
										
		$a1 = 0
		while $a1 < 6
			$teamplayer_id = GetTeamMemberID( -1 , $a1 )
			$a1 = $a1 + 1
			if $teamplayer_id != -1
				ParticipateZoneWar($teamplayer_id, 1)
			endif	
	
	
	}
			
		
		
					