	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/13
	//		Author:??
	//		TaskName:Ectype-first-59240.s
	//		TaskID: ????????59240????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//??3??????,?????????1?
		$count = GetEctypeVar( -1 , 20 )		
		$count = $count + 1
		SetEctypeVar($mapID , 20 , $count)
		#name = GetPlayerInfo( -1 , "name") 
		
		//?????????40?????59241
		
		if $count == 30
		//??????????
			BC( "screen" , "map" , $mapID , "Successfully killed the first wave of Thor's warriors. The second wave of warriors are in the front." )
		//?????????59241
			$n1 = 0
			$posx1 = 150
			while $n1 < 10
				AddGuildDomainMonster( 59241 , 1 , $mapID , $posx1 , 187 , 0 , 90 , 0 , 0 )
				$n1 = $n1 + 1
				$posx1 = $posx1 + 3
			endwhile
			
			$n2 = 0
			$posx2 = 150	
			while $n2 < 10	
				AddGuildDomainMonster( 59241 , 1 , $mapID , $posx2 , 182 , 0 , 90 , 0 , 0 )	
				$n2 = $n2 + 1
				$posx2 = $posx2 + 3
			endwhile
			
			$n3 = 0 
			$posx3 = 150
			while $n3 < 10	
				AddGuildDomainMonster( 59241 , 1 , $mapID , $posx3 , 177 , 0 , 90 , 0 , 0 )
				$n3 = $n3 + 1
				$posx3 = $posx3 + 3
			endwhile
			
			$n4 = 0 
			$posx4 = 150
			while $n4 < 10	
				AddGuildDomainMonster( 59241 , 1 , $mapID , $posx4 , 172 , 0 , 90 , 0 , 0 )
				$n4 = $n4 + 1
				$posx4 = $posx4 + 3
			endwhile
			
			
			$n5 = 0 
			$posx5 = 150
			while $n5 < 10	
				AddGuildDomainMonster( 59241 , 1 , $mapID , $posx5 , 167 , 0 , 90 , 0 , 0 )
				$n5 = $n5 + 1
				$posx5 = $posx5 + 3
			endwhile
			
			$n6 = 0 
			$posx6 = 150
			while $n6 < 10	
				AddGuildDomainMonster( 59241 , 1 , $mapID , $posx6 , 162 , 0 , 90 , 0 , 0 )
				$n6 = $n6 + 1
				$posx6 = $posx6 + 3
			endwhile														
		else
		//????30??,???????
			BC( "screen" , "map" , $mapID , "The attackers have slain " , $count , " Loyal Deity Warriors" )
			BC( "screen" , "map" , $mapID , "Loyal Deity Warrior: " , $count ," / 30" )
				
		endif	
								
	}
	