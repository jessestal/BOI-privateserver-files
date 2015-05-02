	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/23
	//		Author:???
	//		TaskName:AV-NPC-117-indoor.s
	//		TaskID:??
	//
	//****************************************
	
	function OnRequest(){
		$Line = GetServerLineID()
		if $Line != 2
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$task0 = IsTaskAccept( -1, 2311 )
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
		
		$Item1 = GetPlayerInfo( -1, "item", 12421 )
		if $Item1 > 0
			$task0 = IsTaskAccept( -1, 2311 )
			if $task0 != 0
				AcceptTask( -1, 2311 )
			else
				CancelTask( -1, 2311 )
				AcceptTask( -1, 2311 )	
			endif
			$SubItem = SubPlayerInfo( -1, "item", 12421, 1 )
			if $SubItem != 0
				return
			endif
			FlyToMap( -1, 161, 29, 33 )
			SubPlayerInfo( -1, "item", 12553, -1 )
			SubPlayerInfo( -1, "item", 12554, -1 )
			SubPlayerInfo( -1, "item", 12560, -1 )
			SetPlayerVar( -1, 3693, 0 )
			$Rad = RandomNumber( 1, 3 )
			SetPlayerVar( -1, 3704, $Rad )
		else
			BC( "dialogbox", "player", -1, "You cannot enter Darkflame Temple without the protection from Darkness Emblem." )
			return
		endif
		
	}
	
	function OnOption1(){
		$Line = GetServerLineID()
		if $Line != 2
			BC( "dialogbox", "player", -1, "Available only in Realm 2" )
			return
		endif
		
		$task0 = IsTaskAccept( -1, 2311 )
		if $task0 != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		FlyToMap( -1, 161, 29, 33 )
		
	}