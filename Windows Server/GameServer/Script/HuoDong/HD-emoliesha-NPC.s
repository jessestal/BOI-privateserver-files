	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/09
	//		Author:??
	//		TaskName:HD-huanghunhoudezhanzheng-NPC.s
	//		TaskID:????NPC?????
	//
	//****************************************
	//??????
	function OnRequest(){
	
		$level = GetPlayerInfo(-1,"level")
		if $level < 40
			DisableNpcOption(0)
			return
		endif
		//??????
		$Line = GetServerLineID()
		if $Line != 3
			DisableNpcOption(0)
			return
		endif
		
		$last_time =  GetPlayerVar( -1, 3607 )
		$today_time = GetSystemTime( "yday" )
		
		if $today_time == $last_time
			DisableNpcOption(0)
			return
		endif
	}
	
//??????
	function OnOption0(){
	
		$level = GetPlayerInfo(-1,"level")
		if $level < 40
			BC( "dialogbox", "player", -1, "Unqualified LV. Please come back when your LV is above 40." )
			return
		endif
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			return
		endif
		//???90????,???????????????
		//if $level >= 90
		//	BC( "dialogbox", "player", -1, "GUID:04942000002" )
		//	return
		//endif
		
		//?????????,0???,1???
		$is_exist_quest = 0
		$last_time =  GetPlayerVar( -1, 3607 )
		$today_time = GetSystemTime( "yday" )
		
		if $today_time == $last_time
			BC( "dialogbox", "player", -1, "Please come tomorrow." )
			return
		endif
		//40?50????
		call IsExistQuest()
		if $is_exist_quest == 1
			BC( "dialogbox", "player", -1, "Please complete former quest first." )
			return
		endif
        //??-START
			$TJ_join_number = GetGlobalVar(916)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(916 , $TJ_join_number)
		//??-END    		

		//?????
        		
		if $level < 50
			$result = AcceptTask( -1, 4316 )
			if $result != 0
				BC( "chat", "player", -1, "quest receiving error,please try again." )
				return
			endif
			//BC( "messagebox", "player", -1, "GUID:04942000006" )
			SetPlayerVar( -1 , 3607, $today_time)
			return
		endif
		if $level < 60
			$result = AcceptTask( -1, 4317 )
			if $result != 0
				BC( "chat", "player", -1, "quest receiving error,please try again." )
				return
			endif
			//BC( "messagebox", "player", -1, "GUID:04942000008" )
			SetPlayerVar( -1 , 3607, $today_time)
			return
		endif
		if $level < 70
			$result = AcceptTask( -1, 4318 )
			if $result != 0
				BC( "chat", "player", -1, "quest receiving error,please try again." )
				return
			endif
			//BC( "messagebox", "player", -1, "GUID:04942000010" )
			SetPlayerVar( -1 , 3607, $today_time)
			return
		endif
		if $level < 80
			$result = AcceptTask( -1, 4319 )
			if $result != 0
				BC( "chat", "player", -1, "quest receiving error,please try again." )
				return
			endif
			//BC( "messagebox", "player", -1, "GUID:04942000012" )
			SetPlayerVar( -1 , 3607, $today_time)
			return
		endif
		if $level < 90
			$result = AcceptTask( -1, 4320 )
			if $result != 0
				BC( "chat", "player", -1, "quest receiving error,please try again." )
				return
			endif
			//BC( "messagebox", "player", -1, "GUID:04942000014" )
			SetPlayerVar( -1 , 3607, $today_time)
			return
		endif

		$result = AcceptTask( -1, 4434 )
		if $result != 0
			BC( "chat", "player", -1, "quest receiving error,please try again." )
			return
		endif	
		SetPlayerVar( -1 , 3607, $today_time)
	
	}

	//???????????,?????,?$is_exist_quest == 1
	function IsExistQuest(){
		
		$result = IsTaskAccept( -1, 4316 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4317 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4318 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4319 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4320 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4434 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		
		$is_exist_quest = 0
	}