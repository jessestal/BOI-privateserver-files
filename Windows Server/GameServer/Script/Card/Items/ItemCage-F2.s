  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:????-F2
	//		TaskID:ItemCage-F2.s
	//
	//****************************************
	
	function OnUseItem(){
		$yday = GetSystemTime( "yday" )
		$pyday = GetPlayerVar(-1,4033)
		if $yday != $pyday
			SetPlayerVar(-1,4033,$yday)
			SetPlayerVar(-1,211,0)
			SetPlayerVar(-1,212,0)
			SetPlayerVar(-1,213,0)
			SetPlayerVar(-1,214,0)
			SetPlayerVar(-1,215,0)
			SetPlayerVar(-1,216,0)
			SetPlayerVar(-1,217,0)
			SetPlayerVar(-1,218,0)
			SetPlayerVar(-1,219,0)
			SetPlayerVar(-1,220,0)
			SetPlayerVar(-1,221,0)
			SetPlayerVar(-1,222,0)
			SetPlayerVar(-1,223,0)
			SetPlayerVar(-1,224,0)
			SetPlayerVar(-1,225,0)
			SetPlayerVar(-1,226,0)
			SetPlayerVar(-1,227,0)
			SetPlayerVar(-1,228,0)
			SetPlayerVar(-1,229,0)
			SetPlayerVar(-1,230,0)
			SetPlayerVar(-1,231,0)
			SetPlayerVar(-1,232,0)
			SetPlayerVar(-1,233,0)
			SetPlayerVar(-1,234,0)
		endif
		
		$meiri = GetPlayerVar(-1,224)
		if $meiri == 1
			BC( "screen", "player", -1 , "You can only use one of each kind of Fate Charm per day!")
			return
		endif
			
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 65
			BC( "screen", "player", -1 , "You have to be LV65 before you can use this Fate Charm!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54039 , 1 )
		if $delor != 0
			return
		endif
		
		SetPlayerVar(-1,224 , 1)
		$gold = RandomNumber( 0, 60 )
		if $gold == 1
			AddPlayerInfo( -1 , "money" , 10000000)
			BC( "screen", "player", -1 , "You received praise from the Goddess of Fate!")
		endif
		
		$lotgold = RandomNumber( 0, 6000 )
		if $lotgold == 1
			AddPlayerInfo( -1 , "money" , 100000000 )
			BC( "screen", "player", -1 , "Congratulations, you've been granted favor from the Goddess of Fate!")
			$name = GetPlayerInfo( -1 , "name" )
			BC( "screen", "server", -1 , "What luck!" , $name , "received 100,000,000 Coins from their Fate Charm!")
		endif
		
		$card = RandomNumber( 0, 25 )
		if $card == 1
			$HorN = HaveTarot( -1 , 10259 )
			if $HorN == 0
				AddTarotCard( -1 , 10259 )
			endif
		endif
		
	}