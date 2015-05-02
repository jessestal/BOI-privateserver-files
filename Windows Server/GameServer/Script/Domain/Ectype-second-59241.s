	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/13
	//		Author:??
	//		TaskName:Ectype-second-59241.s
	//		TaskID: ????????59241????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//??21??????,?????????1?
		$count = GetEctypeVar( -1 , 21 )		
		$count = $count + 1
		SetEctypeVar($mapID , 21 , $count)
		#name = GetPlayerInfo( -1 , "name") 
		
		//?????????40?????59241
		
		if $count == 60
		//??????????
			BC( "screen" , "map" , $mapID , "successfully defeated the second wave of Thor's warriors! The third wave of guards will be appearing in both sides of the temple!" )
			BC( "screen" , "map" , $mapID , "Defeat the guards and occupy the temple to greatly weaken Thor's power!" )
		//?????????59244,?????
			
			$n1 = 0
			$posx1 = 200
			while $n1 < 6
				AddGuildDomainMonster( 59246 , 1 , $mapID , $posx1 , 159 , 0 , 0 , 0 , 0 )
				$n1 = $n1 + 1
				$posx1 = $posx1 + 5
			endwhile
		
			$n2 = 0
			$posx2 = 95
			while $n2 < 3
				AddGuildDomainMonster( 59246 , 1 , $mapID , $posx2 , 159 , 0 , 0 , 0 , 0 )
				$n2 = $n2 + 1
				$posx2 = $posx2 + 5
			endwhile
			
			$n3 = 0
			$posx3 = 120
			while $n3 < 3
				AddGuildDomainMonster( 59246 , 1 , $mapID , $posx3 , 159 , 0 , 0 , 0 , 0 )
				$n3 = $n3 + 1
				$posx3 = $posx3 + 5
			endwhile
			
			$n4 = 0
			$posx4 = 71
			$posy4 = 149
			while $n4 < 10
				AddGuildDomainMonster( 59244 , 1 , $mapID , $posx4 , $posy4 , 0 , 0 , 0 , 0 )			
				$n4 = $n4 + 1
				$posy4 = $posy4 + 3
			endwhile	
				
			$n5 = 0
			$posx5 = 68
			$posy5 = 149
			while $n5 < 10
				AddGuildDomainMonster( 59244 , 1 , $mapID , $posx5 , $posy5 , 0 , 0 , 0 , 0 )			
				$n5 = $n5 + 1
				$posy5 = $posy5 + 3
			endwhile
			
			$n6 = 0
			$posx6 = 257
			$posy6 = 149
			while $n6 < 10
				AddGuildDomainMonster( 59245 , 1 , $mapID , $posx6 , $posy6 , 0 , 180 , 0 , 0 )
				$n6 = $n6 + 1
				$posy6 = $posy6 + 3
			endwhile
			
			$n7 = 0
			$posx7 = 260
			$posy7 = 149
			while $n7 < 10
				AddGuildDomainMonster( 59245 , 1 , $mapID , $posx7 , $posy7 , 0 , 180 , 0 , 0 )
				$n7 = $n7 + 1
				$posy7 = $posy7 + 3
			endwhile								
		else
		//????60??,???????
			BC( "screen" , "map" , $mapID , "The attackers have slain " , $count , " Faithful Deity Warrior" )
			BC( "screen" , "map" , $mapID , "Faithful Deity Warrior: " , $count ," / 60" )
				
		endif	
								
	}
	