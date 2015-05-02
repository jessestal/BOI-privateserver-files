	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/23
	//		Author:???
	//		TaskName:AV-NPC-116-indoor.s
	//		TaskID:??
	//
	//****************************************
	
	function OnRequest(){
		$Line = GetServerLineID()
		if $Line != 2
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$task0 = IsTaskAccept( -1, 2310 )
		if $task0 != 0
			DisableNpcOption(1)
		else
			DisableNpcOption(0)	
		endif
	}
	
	
	function OnOption0(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "Available only in Realm 2" )
			return
		endif
		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Unable to enter Darkflame Temple. Quest list is full. Please delete some quests and try again." )	
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 12597 )
		$Item2 = GetPlayerInfo( -1, "item", 12420 )
		if $Item1 > 0
			$task0 = IsTaskAccept( -1, 2310 )
			if $task0 != 0
				AcceptTask( -1, 2310 )
			else
				CancelTask( -1, 2310 )
				AcceptTask( -1, 2310 )	
			endif
			$SubItem = SubPlayerInfo( -1, "item", 12597, 1 )
			if $SubItem != 0
				return
			endif
			FlyToMap( -1, 160, 30, 30 )
			SubPlayerInfo( -1, "item", 12478, -1 )
			SubPlayerInfo( -1, "item", 12479, -1 )
			SubPlayerInfo( -1, "item", 12480, -1 )
			SetPlayerVar( -1, 3796, 0 )
			SetPlayerVar( -1, 3792, 0 )
			SetPlayerVar( -1, 3793, 0 )
		else
			if $Item2 > 0
				$task0 = IsTaskAccept( -1, 2310 )
				if $task0 != 0
					AcceptTask( -1, 2310 )
				else
					CancelTask( -1, 2310 )
					AcceptTask( -1, 2310 )	
				endif
				$SubItem = SubPlayerInfo( -1, "item", 12420, 1 )
				if $SubItem != 0
					return
				endif
				FlyToMap( -1, 160, 30, 30 )
				SubPlayerInfo( -1, "item", 12478, -1 )
				SubPlayerInfo( -1, "item", 12479, -1 )
				SubPlayerInfo( -1, "item", 12480, -1 )
				SetPlayerVar( -1, 3796, 0 )
				SetPlayerVar( -1, 3792, 0 )
				SetPlayerVar( -1, 3793, 0 )
			else
				BC( "dialogbox", "player", -1, "You cannot enter Darkflame Temple without the protection from Darkflame Emblem." )
				return	
			endif
		endif
		
	}
	
	function OnOption1(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "Available only in Realm 2" )
			return
		endif
		
		$task0 = IsTaskAccept( -1, 2310 )
		if $task0 != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		FlyToMap( -1, 160, 30, 30 )
		
	}