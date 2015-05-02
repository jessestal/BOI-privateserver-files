		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-07
		//		Author:???
		//		TaskName:??????
		//		TaskID:
		//
		//****************************************

		function OnRequest(){
			
			
		}
		
		
		function OnOption0(){
			
			
			$item2 = GetPlayerInfo( -1, "item", 59895)
			$item3 = GetPlayerInfo( -1, "item", 59896)
			$item4 = GetPlayerInfo( -1, "item", 59897)
		
	
			if $item2 == 0
				BC( "screen", "player", -1, "Need the Chiyu Seal Ghost Stare, the Chiyu Seal Extreme Fury, and the Chiyu Seal Explosive Flame!" )
				return
			endif
			if $item3 == 0
				BC( "screen", "player", -1, "Need the Chiyu Seal Ghost Stare, the Chiyu Seal Extreme Fury, and the Chiyu Seal Explosive Flame!" )
				return
			endif
			if $item4 == 0
				BC( "screen", "player", -1, "Need the Chiyu Seal Ghost Stare, the Chiyu Seal Extreme Fury, and the Chiyu Seal Explosive Flame!" )
				return
			endif
			
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			if $nullitem < 1
				BC( "screen", "player", -1, "There are not enough spaces in your bag.")
				return
			endif
			
			$result = SubPlayerInfo( -1, "item", 59895 ,1)
			$re = $re + $result
			$result = SubPlayerInfo( -1, "item", 59896 ,1)
			$re = $re + $result
			$result = SubPlayerInfo( -1, "item", 59897 ,1)
			$re = $re + $result
		
			if $re == 0
				$result = AddPlayerInfo( -1, "item", 44059 ,1)
				BC( "screen" , "player" , -1 , "You've received the Wrath of the Earth." )
			endif
			
			
		}