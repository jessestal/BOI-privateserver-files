		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:
		//
		//****************************************
		
	function OnUseItem(){
		
		$item1 = GetPlayerInfo( -1, "item", 59894)
		$item2 = GetPlayerInfo( -1, "item", 59898)
	
		if $item1 == 0
			BC( "screen", "player", -1, "The feather is ineffective by itself..." )
			return
		endif
		if $item2 == 0
			BC( "screen", "player", -1, "The feather is ineffective by itself..." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59894 ,1)
		$re = $re + $result
		$result = SubPlayerInfo( -1, "item", 59898 ,1)
		$re = $re + $result
	
		if $re == 0
			$result = AddPlayerInfo( -1, "item", 44066 ,1)
			BC( "screen" , "player" , -1 , "Two feathers have been combined together." )
		endif


	}

