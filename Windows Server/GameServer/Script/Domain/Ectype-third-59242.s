	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/13
	//		Author:??
	//		TaskName:Ectype-third-59242.s
	//		TaskID: ????????59242????
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//??24??????,?????????1?
		$count = GetEctypeVar( -1 , 24 )		
		$count = $count + 1
		SetEctypeVar($mapID , 24 , $count)
		#name = GetPlayerInfo( -1 , "name") 
		
		//?????????50???????
		
		if $count == 50
		//??????????
			BC( "screen" , "map" , $mapID , "Successfully killed the third wave of Thor's warriors. Now the Citygate of the Defenders' Barrier has been destroyed. Thor shows up there." )
		//??????????
			AddGuildDomainMonster( 59269 , 1 , $mapID , 163 , 168 , 0 , 90 , 0 , 0 )
		//??BOSS??????4???
			AddGuildDomainMonster( 59229 , 1 , $mapID , 164 , 65 , 1 , 90 , 0 , 0 )
			AddGuildDomainMonster( 59243 , 1 , $mapID , 173 , 58 , 1 , 90 , 0 , 0 )
			AddGuildDomainMonster( 59243 , 1 , $mapID , 173 , 72 , 1 , 90 , 0 , 0 )
			AddGuildDomainMonster( 59243 , 1 , $mapID , 155 , 58 , 1 , 90 , 0 , 0 )
			AddGuildDomainMonster( 59243 , 1 , $mapID , 155 , 72 , 1 , 90 , 0 , 0 )				
		else
		//????50??,???????
			BC( "screen" , "map" , $mapID , "The attackers have slain " , $count , " Dauntless Deity Warrior" )
			BC( "screen" , "map" , $mapID , "Dauntless Deity Warrior:" , $count ," / 50" )
				
		endif	
								
	}
	