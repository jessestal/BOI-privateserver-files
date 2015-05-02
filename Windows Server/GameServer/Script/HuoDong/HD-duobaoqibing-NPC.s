	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/14
	//		Author:??
	//		TaskName:HD-duobaoqibing-NPC.s
	//		TaskID:??????????
	//
	//****************************************
	
	//??????
	//3627,?????????????
	function OnRequest(){
	//?????10??11???
		
		//-----------------????
		//DisableNpcOption(0)
		//DisableNpcOption(1)
		//DisableNpcOption(2)
		//DisableNpcOption(3)
		//-----------------------
		$time = GetSystemTime( "hour" )
		$today_time = GetSystemTime( "yday" )
		
		$Line = GetServerLineID()
		$is_enter_line = $Line % 2
		//$is_enter_line = 6
		//???????
		if $Line != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		if $time < 21
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			return
		endif
		
		if $time > 22
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 45
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			return
		endif
		
		$player_time = GetPlayerVar( -1, 3627 )
		if $player_time == $today_time
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$result = IsTaskAccept( -1, 4406 )
		if $result != 0
			DisableNpcOption(2)
		endif
	}
	

	
	//??NPC1????2???,??2W
	function OnOption0(){
	//????????
		$today_time = GetSystemTime( "yday" )
		$time = GetSystemTime( "hour" )
		$player_time = GetPlayerVar( -1, 3627 )
		
		$Line = GetServerLineID()
		if $Line != 6
			BC( "dialogbox", "player", -1, "Only Realm 6 can be entered!" )
			return
		endif
		
		if $time < 21
			BC( "dialogbox", "player", -1, "The event has not started yet." )
			return
		endif
		
		if $time > 22
			BC( "dialogbox", "player", -1, "The event has not started yet." )
			return
		endif

	
		if $player_time == $today_time
			BC( "dialogbox", "player", -1, "You have attended today's event already. Unable to move in!" )
			return
		endif
		$player_money = GetPlayerInfo(-1 , "money")
		if $player_money < 20000
			BC( "dialogbox", "player", -1, "Insufficient coins!" )
			return
		endif	
		
		$player_count = GetMapPlayerCount(154)
		if $player_count >= 120
			BC( "dialogbox", "player", -1, "Too many players. Please try later!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You bag is full, please make space first." )
			return
		endif
		
		$pos_number = RandomNumber(1,5)
		if $pos_number == 1
			$map_x = 47
			$map_y = 47
		endif
		if $pos_number == 2
			$map_x = 82
			$map_y = 47
		endif
		if $pos_number == 3
			$map_x = 47
			$map_y = 82
		endif
		if $pos_number == 4
			$map_x = 82
			$map_y = 82
		endif
		if $pos_number == 5
			$map_x = 64
			$map_y = 64
		endif
	
		//????
		$result = AcceptTask( -1 , 4406 )
	
		if $result == 0
			SubPlayerInfo(-1, "money", 20000)
			//????
			$result = FlyToMap( -1 ,154 , $map_x, $map_y )
			//??????
			if $result == 0
				AddStatus(-1 , 11666 , 1)
			//??????????????????
				SetPlayerVar( -1, 3627, $today_time )
				AddPlayerInfo(-1 , "item" , 59194 , 5)
				BC( "screen", "player", -1, "Welcome to Bountyhunter! You have received 5 Bountyhunter Chests. Find more chests throughout Wonderland!" )
				//????-START
				$TJ_join_number = GetGlobalVar(908)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(908 , $TJ_join_number)
				//????-END
			else
				BC( "dialogbox", "player", -1, "Fail to teleport!" )
			endif
		else
			BC( "dialogbox", "player", -1, "Fail to add quest!" )
		endif
	
	}
	
	
	//??NPC1????2???,??9000
	function OnOption1(){
	//????????
		$today_time = GetSystemTime( "yday" )
		$time = GetSystemTime( "hour" )
		$player_time = GetPlayerVar( -1, 3627 )
		
		$Line = GetServerLineID()
		if $Line != 6
			BC( "dialogbox", "player", -1, "Only Realm 6 can be entered!" )
			return
		endif
		
		if $time < 21
			BC( "dialogbox", "player", -1, "The event has not started yet." )
			return
		endif
		
		if $time > 22
			BC( "dialogbox", "player", -1, "The event has not started yet." )
			return
		endif
	
		if $player_time == $today_time
			BC( "dialogbox", "player", -1, "You have attended today's event already. Unable to move in!" )
			return
		endif
		
		$player_money = GetPlayerInfo(-1 , "money")
		if $player_money < 9000
			BC( "dialogbox", "player", -1, "Insufficient coins!" )
			return
		endif
		
		$player_count = GetMapPlayerCount(154)
		if $player_count >= 120
			BC( "dialogbox", "player", -1, "Too many players. Please try later!" )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You bag is full, please make space first." )
			return
		endif
		
		$pos_number = RandomNumber(1,5)
		if $pos_number == 1
			$map_x = 47
			$map_y = 47
		endif
		if $pos_number == 2
			$map_x = 82
			$map_y = 47
		endif
		if $pos_number == 3
			$map_x = 47
			$map_y = 82
		endif
		if $pos_number == 4
			$map_x = 82
			$map_y = 82
		endif
		if $pos_number == 5
			$map_x = 64
			$map_y = 64
		endif

	
		//????
		$result = AcceptTask( -1 , 4406 )
	
		if $result == 0
			SubPlayerInfo(-1, "money", 9000)
			//????
			$result = FlyToMap( -1 ,154 , $map_x, $map_y )
			//??????
			if $result == 0
				//????
				$n = RandomNumber(1,100)
				if $n < 40
					AddStatus(-1 , 11663 , 1)
				else
					if $n < 70
						AddStatus(-1 , 11664 , 1)
					else
						if $n < 90
							AddStatus(-1 , 11665 , 1)
						else
							AddStatus(-1 , 11666 , 1)
						endif
					endif
				endif
				
			//??????????????????
			SetPlayerVar( -1, 3627, $today_time )
			AddPlayerInfo(-1 , "item" , 59194 , 3)
			BC( "screen", "player", -1, "Welcome to Bountyhunter! You have received 3 Bountyhunter Chests. Find more chests throughout Wonderland!" )				
			//????-START
			$TJ_join_number = GetGlobalVar(908)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(908 , $TJ_join_number)
			//????-END
			else
				BC( "dialogbox", "player", -1, "Fail to teleport!" )
			endif
		else
			BC( "dialogbox", "player", -1, "Fail to add quest!" )
		endif
	
	}
	//??????,????????
	function OnOption2(){
		
		$time = GetSystemTime( "hour" )
		$is_enter_line = $Line % 2
		
		//???????
		$Line = GetServerLineID()
		if $Line != 6
			BC( "dialogbox", "player", -1, "Only Realm 6 can be entered!" )
			return
		endif
		$result = IsTaskAccept( -1, 4406 )
		if $result != 0
			BC( "dialogbox", "player", -1, "Unable to move in without Bountyhunter quest." )
			return
		endif

		if $time < 21
			BC( "dialogbox", "player", -1, "Event is over!" )
			return
		endif
		
		if $time > 22
			BC( "dialogbox", "player", -1, "Event is over!" )
			return
		endif
		
		$pos_number = RandomNumber(1,5)
		if $pos_number == 1
			$map_x = 47
			$map_y = 47
		endif
		if $pos_number == 2
			$map_x = 82
			$map_y = 47
		endif
		if $pos_number == 3
			$map_x = 47
			$map_y = 82
		endif
		if $pos_number == 4
			$map_x = 82
			$map_y = 82
		endif
		if $pos_number == 5
			$map_x = 64
			$map_y = 64
		endif
		FlyToMap( -1 ,154 , $map_x, $map_y )
	}