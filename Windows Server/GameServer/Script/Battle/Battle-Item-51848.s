	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/23
	//		Author:??
	//		TaskName:Battle-Item-51848.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 3969 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3970 )
		$round = $round + 1
		

		if $time == $nowtime
			if $round <= 5
				$info = SubPlayerInfo( -1 , "item" , 51848 , 1 )
				if $info != 0
					return
				endif		
				AddPlayerInfo( -1, "money", 20000 )
				SetPlayerVar( -1 , 3970 , $round )
				BC( "screen", "player", -1, "You've already used Coins: Warrior Coin." )
			else
				BC( "screen", "player", -1, "You've already used Coins: Warrior Coin 5 times. You cannot use it again." )
				return
			endif
		else
			$info = SubPlayerInfo( -1 , "item" , 51848 , 1 )
			if $info != 0
				return
			endif
			AddPlayerInfo( -1, "money", 20000 )
			SetPlayerVar( -1 , 3969 , $nowtime )
			SetPlayerVar( -1 , 3970 , 1 )
			BC( "screen", "player", -1, "You've already used Coins: Warrior Coin." )
		endif
		
	}