	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/14
	//		Author:???
	//		TaskName:Monster-32172.s
	//		TaskID: ????
	//
	//****************************************
	
	function OnDead(){
	//90039???
	//90040???
	//90041???
	//90042???
		$a = GetPlayerInfo( -1 , "item" , 64444 )
		if $a < 1
			BC( "screen", "player", -1 ,"N/A??? [?????],??????????????????? [?????] ?" )
			return
		endif
		$count = GetPlayerVar( -1 , 3244 )
		$count = $count + 1
		if $count > 50
			BC( "screen", "player", -1, "You have gathered it 50 times. You cannot acquire anything any more now." )
			return
		endif
		SetPlayerVar( -1 , 3244 , $count )
		$n = RandomNumber ( 0 , 99 )
		if $n < 25
			DropMonsterItems( -1 , 90039 )
			return
		endif
		if $n < 50
			if $n >= 25
				DropMonsterItems( -1 , 90040 )
				return
			endif
		endif
		if $n < 75
			if $n >= 50
				DropMonsterItems( -1 , 90041 )
				return
			endif
		endif
		if $n >= 75
			DropMonsterItems( -1 , 90042 )
			return
		endif
		
		
	}
		
	