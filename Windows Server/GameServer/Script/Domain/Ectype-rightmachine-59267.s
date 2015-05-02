	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/25
	//		Author:??
	//		TaskName:Ectype-rightmachine-59267.s
	//		TaskID: ????????1??
	//
	//****************************************

	
	function OnDead(){
		//????CharID
		$charID = GetMonsterCharID()
		// ??Char?????MapID
		$mapID = GetMonsterMapID($charID)
		//???????????
		$zhanchang = GetPlayerDomainWarSide(-1 , -1)
		//??????????????
		#name = GetPlayerInfo( -1 , "name") 
		
		//????????
		//????,?????????
		
		if $zhanchang == 1
			SetGuildDomainMonsterDead($charID)
			AddGuildDomainMonster( 59266 , 1 , $mapID , 268 , 163 , 0 , 0  , 2 , 1 )
			//???????????4??????2,??????
			SetEctypeVar( $mapID ,  5 , 2 )
			AddGuildDomainPlayerExp($mapID,2,200000)
			BC( "screen" , "map" , $mapID , "Neutral Vessel Workbench has been " , #name , " surprisingly attacked. All defending members get 200,000 EXP" )
		endif
		//????,?????????	
		if $zhanchang == 0
			SetGuildDomainMonsterDead($charID)
			AddGuildDomainMonster( 59265 , 1 , $mapID , 268 , 163 , 0 , 0  , 1 , 1 )
			//???????????4??????1,??????
			SetEctypeVar( $mapID ,  5 , 1 )
			AddGuildDomainPlayerExp($mapID,1,200000)
			BC( "screen" , "map" , $mapID , "Neutral Vessel Workbench has been " , #name , " surprisingly attacked. All attacking members get 200,000 EXP" )
		endif
			
				
		

	}
	