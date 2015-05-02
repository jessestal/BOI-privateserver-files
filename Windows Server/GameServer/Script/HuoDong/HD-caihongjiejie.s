	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/25
	//		Author:???
	//		TaskName:????
	//		TaskID:HD-caihongjiejie.s
	//
	//****************************************

	function OnRequest(){

		$level = GetPlayerInfo(-1 , "level")
		$today_week = GetSystemTime( "week" )
		$result = IsTaskAccept( -1, 1862 )
		$week = GetNowWeek()
		$last_week = GetPlayerVar(-1 , 3334)
		$last_1862 = GetPlayerVar(-1 , 3335)

		if $level < 30
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif

		if $today_week > 0
			if $today_week < 6
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
			endif
		endif

		if $last_1862 == $week
			DisableNpcOption(2)
		endif

		if $result == 0
			DisableNpcOption(2)
		endif


//------????????558????,????????????????????------------------------------------
		$ectype_id = GetEctypeID(-1 , 558)
		if $ectype_id > 0
			DisableNpcOption(0)
			DisableNpcOption(2)
		else
			DisableNpcOption(1)
		endif

	}

		//  ?????????,???????
	function OnOption0(){
		$Done = IsTaskDone( -1 , 1862 )

		if $Done != 0
			BC( "screen" , "player" , -1 , "You have to finish the Rainbow Barrier quest before you can open the Dream Rainbow Valley barrier!" )
			BC( "chat" , "player" , -1 , "You have to finish the Rainbow Barrier quest before you can open the Dream Rainbow Valley barrier!" )
			return
		endif

		$team = IsPlayerInTeam(-1 )
		$week = GetNowWeek()
		$last_week = GetPlayerVar(-1 , 3334)
		$line = GetServerLineID()

		if $line != 6
			BC( "screen" , "player" , -1 , "Only those in Realm 6 can enter Dream Rainbow Valley!" )
			return
		endif

		if $week == $last_week
			BC( "screen" , "player" , -1 , "Sorry, you've already completed the Rainbow Crisis quest for this week. Come again next week!" )
			return
		endif

		if $team == 0
			BC( "screen" , "player" , -1 , "Sorry, only one person at a time is allowed in Dream Rainbow Valley!" )
		else
			$result = FlyToEctype( -1 , 558 , 59, 24 )
			if $result >= 0
				AddStatus( -1, 6349, 1 )
				SetPlayerVar(-1, 3848, $result)
				SetPlayerVar(-1 , 3334 , $week)
//				BC( "screen" , "player" , -1 , "$week" )
//				BC( "screen" , "player" , -1 , "$last_week" )
				//????-START
				$TJ_join_number = GetGlobalVar(893)
				$TJ_join_number = $TJ_join_number + $team_count
				SetGlobalVar(893 , $TJ_join_number)
				//????-END
			else
				BC( "screen" , "player" , -1 , "Dream Rainbow Valley is occupied; try a different realm, or try again in a little while." )
			endif
		endif

	}

//-------????????-----------------
	function OnOption1(){
		$ectype_uid = GetEctypeUniqueID( -1 , 558 )
		$player_uid = GetPlayerVar( -1 , 3848 )

//--------??????,??????,??????,??????---------
		if $ectype_uid == $player_uid
			$result = FlyToEctype( -1 , 558 , 59, 24 )
			if $result > 0
				BC( "screen", "player", -1, "You've returned to the Dream Rainbow Valley instance!" )
			else
				BC( "dialogbox", "player", -1 , "Error occurred when teleporting into the instance. Error Code: " , $result )
			endif
		else
			BC( "dialogbox", "player", -1 , "You do not belong to this instance anymore." )
		endif

	}


	function OnOption2(){
		$line = GetServerLineID()
		if $line == 6
			AcceptTask( -1, 1862 )
			SetPlayerActLog(-1,30,0)
		else
			BC( "screen" , "player" , -1 , "Only those in Realm 6 can enter Dream Rainbow Valley!" )
		endif

	}