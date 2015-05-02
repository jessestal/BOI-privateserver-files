	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/25
	//		Author:??
	//		TaskName:Item-nianshou-59616.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Now_Yday = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1, 4078 )
		
		//??????,?????????????
		if $day == $Now_Yday
			BC( "screen", "player", -1, "New Year's Beast Pictures can only be opened once a day. " )
			return
		endif
		
		
		//??????
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")
			return
		endif
		
		
		//??????????,??????
		SetPlayerVar(-1, 4078 ,$Now_Yday )
		$result = SubPlayerInfo( -1, "item", 59616, 1 )
		if $result != 0
			return
		endif
		
		//????
	$lv = GetPlayerInfo( -1 , "level" )
	if $lv >= 75
		//??????
		$Rad = RandomNumber( 1, 10000 )
		if $Rad <= 5
			$temp = GetGlobalVar(60)
			//??2????
			if $temp < 2
				//????
				AddPlayerInfo( -1, "item", 59555, 1 )
				#name = GetPlayerInfo( -1, "name" )
				BC( "screen", "servergroup", -1, "The hero ",#name,"You opened the New Year's Beast Picture and got a Zodiac Pet Chest!" )
				$temp = $temp + 1
				SetGlobalVar( 60, $temp )
			else
				 //2????
				AddPlayerInfo( -1, "item", 64245, 1 )
			endif
		else
			if $Rad <= 10
				//????
				AddPlayerInfo( -1, "item", 62108, 1 )
				#name = GetPlayerInfo( -1, "name" )
				BC( "screen", "servergroup", -1, "The hero ",#name,"You opened the New Year's Beast Picture and got a rare item New Year's Beast Mount!" )
			else
				if $Rad <= 12
					//4????
					$temp = GetGlobalVar(61)
					if $temp == 0
						AddPlayerInfo( -1, "item", 5384, 1 )
						#name = GetPlayerInfo( -1, "name" )
						BC( "screen", "servergroup", -1, "The hero ",#name,"You opened the New Year's Beast Picture and got a Gem of Hel LV4!" )
						SetGlobalVar( 61, 1 )
					else
						 //2????
						AddPlayerInfo( -1, "item", 64245, 1 )
					endif
				endif
			endif
		endif
		
		//?????
		if $Rad > 12
			if $Rad <= 112
				AddPlayerInfo( -1, "item", 63422, 1 )
			endif
		endif
		
		
		//??????
		if $Rad > 112
			if $Rad <= 312
				AddPlayerInfo( -1, "item", 60504, 1 )
			endif
		endif
		
		
		//??????
		if $Rad > 312
			if $Rad <= 412
				AddPlayerInfo( -1, "item", 60484, 1 )
			endif
		endif
		
		
		//?????
		if $Rad > 412
			if $Rad <= 912
				AddPlayerInfo( -1, "item", 63768, 1 )
			endif
		endif
		
		
		
		//??????
		if $Rad > 912
			if $Rad <= 1912
				AddPlayerInfo( -1, "item", 9, 1 )
			endif
		endif
		
		
		//2????
		if $Rad > 1912
			if $Rad <= 2800
				AddPlayerInfo( -1, "item", 64245, 1 )
			endif
		endif
		
		
		//4?????
		if $Rad > 2800
			if $Rad <= 3800
				AddPlayerInfo( -1, "item", 20273, 1 )
			endif
		endif
		
		
		//???
		if $Rad > 3800
			if $Rad <= 6800
				AddPlayerInfo( -1, "item", 59304, 1 )
			endif
		endif
		
		
		//1????
		if $Rad > 6800
			if $Rad <= 10000
				AddPlayerInfo( -1, "item", 64244, 1 )
			endif
		endif
	else
		//75???
		//?????
		$Rad = RandomNumber( 1, 10000 )
		if $Rad > 0
			if $Rad <= 100
				AddPlayerInfo( -1, "item", 63768, 1 )
			endif
		endif
		
		
		
		//??????
		if $Rad > 100
			if $Rad <= 500
				AddPlayerInfo( -1, "item", 9, 1 )
			endif
		endif
		
		
		//2????
		if $Rad > 500
			if $Rad <= 1500
				AddPlayerInfo( -1, "item", 64245, 1 )
			endif
		endif
		
		
		//4?????
		if $Rad > 1500
			if $Rad <= 3500
				AddPlayerInfo( -1, "item", 20273, 1 )
			endif
		endif
		
		
		//???
		if $Rad > 3500
			if $Rad <= 6500
				AddPlayerInfo( -1, "item", 59304, 1 )
			endif
		endif
		
		
		//1????
		if $Rad > 6500
			if $Rad <= 10000
				AddPlayerInfo( -1, "item", 64244, 1 )
			endif
		endif
	endif
		

	}