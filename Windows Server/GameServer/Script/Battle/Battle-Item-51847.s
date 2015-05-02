	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/23
	//		Author:??
	//		TaskName:Battle-Item-51847.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 3967 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3968 )
		$round = $round + 1
		

		if $time == $nowtime
			if $round <= 5
				$info = SubPlayerInfo( -1 , "item" , 51847 , 1 )
				if $info != 0
					return
				endif		
				AddPlayerInfo( -1 , "givepoint" , 200 )
				SetPlayerVar( -1 , 3968 , $round )
				BC( "screen", "player", -1, "You've already used a Salary Card once." )
			else
				BC( "screen", "player", -1, "You've already used a Salary Card 5 times. You cannot use it again." )
				return
			endif
		else
			$info = SubPlayerInfo( -1 , "item" , 51847 , 1 )
			if $info != 0
				return
			endif
			AddPlayerInfo( -1 , "givepoint" , 200 )
			SetPlayerVar( -1 , 3967 , $nowtime )
			SetPlayerVar( -1 , 3968 , 1 )
			BC( "screen", "player", -1, "You've already used a Salary Card once." )
		endif
		
	}