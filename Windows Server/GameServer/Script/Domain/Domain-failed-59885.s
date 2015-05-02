	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:Domain-failed-59885.s
	//		TaskID:?????????
	//
	//****************************************
	

	function OnUseItem(){


	
	$id = GetPlayerID()
	$guildid = GetPlayerInfo($id,"guildid")
	#name = GetPlayerInfo( -1 , "name")
	$nowweek = GetNowWeek()
	$week = GetSystemTime( "week" )
	$now_yday = GetSystemTime("yday")
	$time_week = GetPlayerVar( -1 ,3315)
	$times = GetPlayerVar( -1 , 3316)
	$temp_times = GetPlayerVar(-1 , 4017)
	$firsttime = GetPlayerVar(-1 , 3347)
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	//??????????
	if $bag_count < 1
		BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
		return
	endif	
			
	$result = SubPlayerInfo(-1 , "item" , 59885 , 1)
	if $time_week != $nowweek
		if $result == 0	
			//??????
			$play_level = GetPlayerInfo( -1 , "level" )
			$exp = 0
			if $play_level > 47
				$temp = 6 * $play_level
				$temp = $temp - 220
				$exp = $play_level * $play_level
				$exp = $exp * $temp
				$exp = $exp / 10
			else
				$exp = $play_level * $play_level
				$exp = $exp * 6
			endif
			//??????
			$exp = $exp * 10
			//??????
			AddPlayerInfo( -1 , "exp" , $exp )
			//?????
			//????? = ????^2+0.6*????+1000
			//????? = ????? * 140
			
			$fieldlevel = GetFieldLevel(-1)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 400
			
			//??????0??????????
	
			if $fieldlevel > 0
				AddFieldExp( -1 , $godexp )
			endif
				
			AddPlayerInfo( -1, "prestige", 46 , 250 )
			BC( "chat" , "player" , -1 , "Gain 250 Territory War Glory")
			BC( "screen" , "player" , -1 , "Gain 250 Territory War Glory. Can be used to buy other rewards from Territory War Reward Agent")
			
			BC( "chat" , "player" , -1 , "You got 50 Guild Contribution")
			//???????
			AddPlayerInfo($id,"guildoffer",10)
			//??????
			AddPlayerInfo($id,"guildmoney",20000)
			//???????
			AddPlayerInfo($id,"guildprosperity",500)
			BC( "chat" , "guild" , $guildid , "By the efforts of our distinguished Guild member "  , #name , "Contributed in Territory War. Increase Guild Funds by 20,000 and Guild Development by 500.")
			SetPlayerVar( -1 , 3316 , 1)
			SetPlayerVar( -1 , 3315 , $nowweek)
			SetPlayerVar( -1 , 4017 , $now_yday)		
			if $firsttime != $nowweek
				AddPlayerInfo( -1, "item", 4988, 10 )
				SetPlayerVar( -1 , 3347 , $nowweek)		
				BC( "chat" , "player" , -1 , "This is your first time this week using this territory war gift pack. You received 10 Guild Honor Coins!")
				BC( "screen" , "player" , -1 , "This is your first time this week using this territory war gift pack. You received 10 Guild Honor Coins!")
			endif
		endif	
	else
		if $result == 0	
			BC( "chat" , "player" , -1 , "You've already opened a territory war gift pack this week. This time you received 1 Guild Honor Coin!")
			BC( "screen" , "player" , -1 , "You've already opened a territory war gift pack this week. This time you received 1 Guild Honor Coin!")
			AddPlayerInfo( -1, "item", 4988, 1 )
		endif	
	endif			
			
	
	}																	