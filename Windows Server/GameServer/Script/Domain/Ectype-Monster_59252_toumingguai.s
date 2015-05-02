	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/13
	//		Author:??
	//		TaskName:Ectype-Monster_59252_toumingguai.s
	//		TaskID: 59252?????????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		
		
		BC( "screen" , "map" , $mapID , "Thor's power has been largely weakened. Dauntless Deity Warrior appears in front of the Defenders' Barrier" )
			
		$n1 = 0
		$posx1 = 160
		while $n1 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx1 , 145 , 0 , 90 , 0 , 0 )
			$n1 = $n1 + 1
			$posx1 = $posx1 + 2
		endwhile
		
		$n2 = 0
		$posx2 = 160
		while $n2 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx2 , 142 , 0 , 90 , 0 , 0 )
			$n2 = $n2 + 1
			$posx2 = $posx2 + 2
		endwhile
		
		$n3 = 0
		$posx3 = 160
		while $n3 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx3 , 139 , 0 , 90 , 0 , 0 )
			$n3 = $n3 + 1
			$posx3 = $posx3 + 2
		endwhile	
		
		$n4 = 0
		$posx4 = 160
		while $n4 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx4 , 136 , 0 , 90 , 0 , 0 )
			$n4 = $n4 + 1
			$posx4 = $posx4 + 2
		endwhile			
		
		$n5 = 0
		$posx5 = 160
		while $n5 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx5 , 133 , 0 , 90 , 0 , 0 )
			$n5 = $n5 + 1
			$posx5 = $posx5 + 2
		endwhile
		
		$n6 = 0
		$posx6 = 160
		while $n6 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx6 , 130 , 0 , 90 , 0 , 0 )
			$n6 = $n6 + 1
			$posx6 = $posx6 + 2
		endwhile
		
		$n7 = 0
		$posx7 = 160
		while $n7 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx7 , 127 , 0 , 90 , 0 , 0 )
			$n7 = $n7 + 1
			$posx7 = $posx7 + 2
		endwhile		
		
		$n8 = 0
		$posx8 = 160
		while $n8 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx8 , 124 , 0 , 90 , 0 , 0 )
			$n8 = $n8 + 1
			$posx8 = $posx8 + 2
		endwhile			
		
		$n9 = 0
		$posx9 = 160
		while $n9 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx9 , 121 , 0 , 90 , 0 , 0 )
			$n9 = $n9 + 1
			$posx9 = $posx9 + 2
		endwhile						
		
		$n10 = 0
		$posx10 = 160
		while $n10 < 5
			AddGuildDomainMonster( 59242 , 1 , $mapID , $posx10 , 118 , 0 , 90 , 0 , 0 )
			$n10 = $n10 + 1
			$posx10 = $posx10 + 2
		endwhile				
					
	
								
	}
	